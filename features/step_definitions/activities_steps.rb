# encoding: utf-8

Quando /^um pedido for cadastrado/ do
  @order = Factory(:order)
end

Quando /^um pedido for enviado/ do
  @order = Factory(:order_to_be_confirmed)
end

Quando /^um pedido for confirmado/ do
  @order = Factory(:order_confirmed)
end

Quando /^um pedido for cancelado/ do
  @order = Factory(:order_cancelled_after_sent)
end

Então /^eu devo ver o pedido como "([^"]*)" na lista de atividades$/ do |status|
  visit root_path
  page.should have_content("Pedido #{@order.id} #{status}")
end
