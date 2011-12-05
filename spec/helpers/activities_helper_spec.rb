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
    describe 'for a new order' do
      before do
        @order = Factory(:order)
        @activity = Activity.last
      end

      subject { helper.activity_description(@activity) }

      it { should have_css("a[href='#{order_path(@order)}']") }
      it { should have_css("span.text") }
      it { should have_css("span.company") }
      it { should have_css("span.client") }
    end
  end

end
