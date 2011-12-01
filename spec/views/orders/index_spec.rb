require 'spec_helper'

describe 'orders/index.html.haml' do

  let(:today) { Date.today }

  context 'always' do
    before do
      assign(:orders, [Factory(:order)])
      assign(:date, today)
      render
    end

    subject { rendered }

    it { should have_css("a[href='#{new_order_path}']") }
    it { should have_css('.prev-next a.prev') }
    it { should have_css('.prev-next a.next') }
  end

  context 'when at least one order exists' do
    before do
      assign(:orders, [Factory(:order)])
      assign(:date, today)
      render
    end

    subject { rendered }

    it { should have_css('h3.date') }
    it { should have_css('table.orders') }
    it {
      should_not include(t('label.no_records_found_for_date',
                           :model => t('activerecord.models.order'),
                           :date => l(today)))
    }
  end

  context 'when no order exists' do
    before do
      assign(:orders, [])
      assign(:date, today)
      render
    end

    subject { rendered }

    it { should_not have_css('table.orders') }
    it {
      should include(t('label.no_records_found_for_date',
                       :model => t('activerecord.models.order'),
                       :date => l(today)))
    }
  end

end
