# encoding: UTF-8

module OrdersSupport
  def fill_order_form_with(order)
    within 'form.order' do
      select order.client.name, :from => I18n.t('activerecord.attributes.order.client') unless order.client.nil?
      select order.company.name, :from => I18n.t('activerecord.attributes.order.company') unless order.company.nil?
    end
  end

  def fill_and_submit_order_form_with(order)
    fill_order_form_with(order)
    within 'form.order' do
      submit
    end
  end

  def fill_order_item_form_with(order_item)
    within 'form.order_item' do
      select order_item.product.code, :from => I18n.t('activerecord.attributes.order_item.product') unless order_item.product.nil?
      fill_text_fields_with(order_item, [:quantity, :unit_price])
    end
  end

  def fill_and_submit_order_item_form_with(order_item)
    fill_order_item_form_with(order_item)
    within 'form.order_item' do
      submit
    end
  end
end

World(OrdersSupport)

