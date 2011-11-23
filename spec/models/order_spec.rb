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

  it { should allow_value(nil).for(:interest) }
  it { should validate_numericality_of(:interest) }

  it { should allow_value(nil).for(:comission) }
  it { should validate_numericality_of(:comission) }

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
    end

    context 'when type of freight is FOB' do
      it 'should require a carrier' do
        subject.type_of_freight = 'FOB'
        subject.carrier = nil
        subject.should_not be_valid
      end
    end
  end

end
