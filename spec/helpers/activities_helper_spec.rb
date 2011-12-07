require 'spec_helper'

describe ActivitiesHelper do

  describe '#datetime_label' do
    subject { helper.datetime_label(DateTime.new(2011, 12, 3, 15, 58, 41)) }

    it { should have_css('span.date', :count => 1) }
    it { should have_content('3/12') }

    it { should have_css('span.time', :count => 1) }
    it { should have_content('15h58') }
  end

  describe '#activity_description' do
    describe 'for an order' do
      before do
        @activity = mock_model(Activity)
        @activity.stub!(:target).and_return(mock_model(Order).as_null_object)
        @activity.stub!(:activity_type).and_return(anything)
        @activity.should_receive(:target_type).at_least(:once).and_return('Order')
      end

      subject { helper.activity_description(@activity) }

      it { should have_css("a span.text") }
      it { should have_css("a span.company") }
      it { should have_css("a span.client") }
    end

    describe 'for a client' do
      before do
        @activity = mock_model(Activity)
        @activity.stub!(:target).and_return(mock_model(Client).as_null_object)
        @activity.stub!(:activity_type).and_return(anything)
        @activity.should_receive(:target_type).at_least(:once).and_return('Client')
      end

      subject { helper.activity_description(@activity) }

      it { should have_css("a span.text") }
      it { should have_css("a span.city") }
    end

    describe 'for a product' do
      before do
        @activity = mock_model(Activity)
        @activity.stub!(:target).and_return(mock_model(Product).as_null_object)
        @activity.stub!(:activity_type).and_return(anything)
        @activity.should_receive(:target_type).at_least(:once).and_return('Product')
      end

      subject { helper.activity_description(@activity) }

      it { should have_css("a span.text") }
      it { should have_css("a span.company") }
    end
  end
end
