require 'spec_helper'

describe Order do

  subject { Factory.build(:order) }

  it { should belong_to(:client) }
  it { should validate_presence_of(:client_id) }

  it { should belong_to(:company) }
  it { should validate_presence_of(:company_id) }

  it { should have_many(:order_items) }

  it { should belong_to(:carrier) }

  it { should have_db_column(:created_at) }

  describe '#status' do
    context 'an incomplete order draft' do
      subject { Factory(:order) }

      its(:status_name) { should == :draft }

      its(:can_finish_draft_and_send?) { should be_false }
      its(:can_cancel?)                { should be_false }
      its(:can_confirm?)               { should be_false }
      its(:can_reject?)                { should be_false }
    end

    context 'a complete order draft' do
      subject { Factory(:order_with_items) }

      its(:status_name) { should == :draft }

      its(:can_finish_draft_and_send?) { should be_true }
      its(:can_cancel?)                { should be_false }
      its(:can_confirm?)               { should be_false }
      its(:can_reject?)                { should be_false }
    end

    context 'an order waiting to be confirmed by the company' do
      subject { Factory(:order_to_be_confirmed) }

      its(:status_name) { should == :to_be_confirmed }

      it { should_not be_changed }

      its(:can_finish_draft_and_send?) { should be_false }
      its(:can_cancel?)                { should be_true }
      its(:can_confirm?)               { should be_true }
      its(:can_reject?)                { should be_true }
    end

    context 'a confirmed order' do
      subject { Factory(:order_confirmed) }

      its(:status_name) { should == :confirmed }

      it { should_not be_changed }

      its(:can_finish_draft_and_send?) { should be_false }
      its(:can_cancel?)                { should be_true }
      its(:can_reject?)                { should be_false }
    end

    context 'a rejected order' do
      subject { Factory(:order_rejected) }

      its(:status_name) { should == :rejected }

      it { should_not be_changed }

      its(:can_finish_draft_and_send?) { should be_false }
      its(:can_cancel?)                { should be_false }
      its(:can_confirm?)               { should be_false }
    end

    context 'a cancelled order' do
      context 'after it was sent' do
        subject { Factory(:order_cancelled_after_sent) }

        its(:status_name) { should == :cancelled }

        it { should_not be_changed }

        its(:can_finish_draft_and_send?) { should be_false }
        its(:can_confirm?)               { should be_false }
        its(:can_reject?)                { should be_false }
      end

      context 'after it was confirmed' do
        subject { Factory(:order_cancelled_after_confirmed) }

        its(:status_name) { should == :cancelled }

        it { should_not be_changed }

        its(:can_finish_draft_and_send?) { should be_false }
        its(:can_confirm?)               { should be_false }
        its(:can_reject?)                { should be_false }
      end
    end
  end

  describe '#payment' do
    it { should serialize(:payment).as(Array) }

    it 'should accept integer values' do
      subject.payment = [30, "60"]
      subject.payment.should == [30, 60]
    end

    it 'should ignore non-integer values' do
      subject.payment = ["asd", "", nil]
      subject.payment.should == []
    end

    it 'should have a human readable format' do
      subject.payment = [30, 60, 90]
      subject.human_payment.should == '30 / 60 / 90'
    end
  end

  describe '#discount' do
    it { should serialize(:discount).as(Array) }

    it 'should accept float values' do
      subject.discount = [15, "15", 10.5, "10.5"]
      subject.discount.should == [15.0, 15.0, 10.5, 10.5]
    end

    it 'should ignore non-float values' do
      subject.discount = ["5,5", "asd", "", nil]
      subject.discount.should == []
    end

    it 'should have a human readable format' do
      subject.discount = [15, 10.5, 4]
      subject.human_discount.should == '15.0% + 10.5% + 4.0%'
    end
  end

  describe '#interest' do
    it { should allow_value(nil).for(:interest) }

    it { should validate_numericality_of(:interest) }

    it 'should have a human readable format' do
      subject.interest = 10
      subject.human_interest.should == '10.0%'
    end
  end

  describe '#comission' do
    it { should allow_value(nil).for(:comission) }

    it { should validate_numericality_of(:comission) }

    it 'should have a human readable format' do
      subject.comission = 6.5
      subject.human_comission.should == '6.5%'
    end
  end

  it { should have_db_column(:observations) }

  context 'when creating a new order' do
    it { should allow_value(nil).for(:payment) }
    it { should allow_value([""]).for(:payment) }
    it { should allow_value(["", "", ""]).for(:payment) }

    it { should allow_value(nil).for(:discount) }
    it { should allow_value([""]).for(:discount) }
    it { should allow_value(["", "", ""]).for(:discount) }

    it { should allow_value(nil).for(:type_of_freight) }
  end

  context 'when updating order information' do
    subject { Factory(:order) }

    it { should_not allow_value([""]).for(:payment) }
    it { should_not allow_value(["", "", ""]).for(:payment) }

    it { should_not allow_value([""]).for(:discount) }
    it { should_not allow_value(["", "", ""]).for(:discount) }

    it { should_not allow_value(nil).for(:type_of_freight) }
    it { should allow_value('CIF').for(:type_of_freight) }
    it { should allow_value('FOB').for(:type_of_freight) }
    it { should_not allow_value('any').for(:type_of_freight) }

    context 'when type of freight is CIF' do
      it 'should not require a carrier' do
        subject.type_of_freight = 'CIF'
        subject.carrier = nil
        subject.should be_valid
      end

      it 'should set carrier to nil' do
        subject.type_of_freight = 'CIF'
        subject.carrier = Factory(:carrier)
        subject.save
        subject.carrier.should be_nil
      end
    end

    context 'when type of freight is FOB' do
      it 'should require a carrier' do
        subject.type_of_freight = 'FOB'
        subject.carrier = nil
        subject.should_not be_valid
      end
    end
  end


  describe 'calculations' do
    context 'when there are order items' do
      before do
        @order = Factory(:order, :comission => 5.0)
        @order.order_items = [
          Factory(:order_item,
                  :order => @order,
                  :unit_price => 10.50,
                  :quantity => 2),
          Factory(:order_item,
                  :order => @order,
                  :unit_price => 5.00,
                  :quantity => 1)
        ]
      end

      describe '#total_price' do
        it 'should calculate total order price' do
          @order.total_price.should == 26.00
        end
      end

      describe '#total_comission' do
        it 'should calculate total comission' do
          @order.total_comission.should == 1.3
        end
      end
    end

    context 'when there are no order items' do
      before do
        @order = Factory(:order, :comission => 5.0)
        @order.order_items.each {|i| i.destroy}
        @order.order_items = []
      end

      describe '#total_price' do
        it 'should return zero' do
          @order.total_price.should == 0.0
        end
      end

      describe '#total_comission' do
        it 'should return zero' do
          @order.total_comission.should == 0.0
        end
      end
    end
  end

end
