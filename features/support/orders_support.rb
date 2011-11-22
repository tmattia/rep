# encoding: UTF-8

module OrdersSupport
  def fill_order_form_with(order)
    within 'form.order' do
      select order.client.name,
             :from => field_name(order, :client) if order.client_id?
      select order.company.name,
             :from => field_name(order, :company) if order.company_id?
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
      select order_item.product.code,
             :from => field_name(order_item, :product) if order_item.product_id?
      fill_text_fields_with(order_item, [:quantity, :unit_price])
    end
  end

  def fill_and_submit_order_item_form_with(order_item)
    fill_order_item_form_with(order_item)
    within 'form.order_item' do
      submit
    end
  end

  def fill_order_payment_comission_and_freightage_form_with(order)
    within 'form.order' do
      fill_in "order_payment", :with => order.payment[0]
      fill_in "order_discount", :with => order.discount[0]
      for i in 1...5 do
        fill_in "order_payment_#{i}", :with => order.payment[i]
        fill_in "order_discount_#{i}", :with => order.discount[i]
      end
      fill_text_fields_with(order, [:interest, :comission, :observations])
    end
  end

  def fill_and_submit_order_payment_comission_and_freightage_form_with(order)
    fill_order_payment_comission_and_freightage_form_with(order)
    within 'form.order' do
      submit
    end
  end

  def select_type_of_freight(type)
    select type, :from => field_name(:order, :type_of_freight)
  end

  def select_carrier(carrier_name)
    select carrier_name, :from => field_name(:order, :carrier)
  end
end

World(OrdersSupport)
