require 'spec_helper'

describe 'order_items/_form.html.haml' do

  context 'when creating an order item' do
    before do
      assign(:order_item, Factory.build(:order_item))
      render
    end

    subject { rendered }

    [:product, :unit_price, :quantity, :color].each do |field|
      it { should have_field(t("activerecord.attributes.order_item.#{field}")) }
    end
    it { should have_css("input[type='submit'][value='#{t('helpers.submit.create')}']") }
    it { should have_css("input[type='submit'][value='#{t('label.order_item.save_and_add_another')}']") }
  end


  context 'when editing an order item' do
    before do
      assign(:order_item, Factory(:order_item))
      render
    end

    subject { rendered }

    [:product, :unit_price, :quantity, :color].each do |field|
      it { should have_field(t("activerecord.attributes.order_item.#{field}")) }
    end
    it { should have_css("input[type='submit'][value='#{t('helpers.submit.create')}']") }
    it { should_not have_css("input[type='submit'][value='#{t('label.order_item.save_and_add_another')}']") }
  end

end
