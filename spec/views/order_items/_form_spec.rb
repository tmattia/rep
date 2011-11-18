require 'spec_helper'

describe 'order_items/_form.html.haml' do

  let(:order_item) { Factory(:order_item) }

  before do
    assign(:order_item, order_item)
    render
  end

  subject { rendered }

  [:product, :unit_price, :quantity].each do |field|
    it { should have_field(t("activerecord.attributes.order_item.#{field}")) }
  end
  it { should have_css("input[type='submit'][value='#{t('helpers.submit.create')}']") }
  it { should have_css("input[type='submit'][value='#{t('label.order_item.save_and_add_another')}']") }

end
