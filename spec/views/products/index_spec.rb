require 'spec_helper'

describe 'products/index.html.haml' do

  context 'always' do
    before do
      assign(:products, [Factory(:product)])
      render
    end

    subject { rendered }

    it { should have_css("a[href='#{new_product_path}']") }
  end

  context 'when at least one product exists' do
    before do
      assign(:products, [Factory(:product)])
      render
    end

    subject { rendered }

    it { should have_css('table.products') }
    it {
      should_not include(t('label.no_records',
                           :model => t('activerecord.models.product')))
    }
  end

  context 'when no product exists' do
    before do
      assign(:products, [])
      render
    end

    subject { rendered }

    it { should_not have_css('table.products') }
    it {
      should include(t('label.no_records',
                       :model => t('activerecord.models.product')))
    }
  end

end
