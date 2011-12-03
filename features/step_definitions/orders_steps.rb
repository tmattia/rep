# encoding: utf-8

Dado /^que eu estou na página de adicionar pedido$/ do
  @order = Factory.build(:order)
  visit(new_order_path)
end

Dado /^que um pedido existe$/ do
  Dado "que uma representada existe"
  Dado "que a representada tem um produto"
  @order = Factory(:order, :company => @company)
end

Dado /^que o pedido possui pelo menos um item$/ do
  @order.order_items << Factory(:order_item, :order => @order)
end

Dado /^que uma representada existe$/ do
  @company = Factory(:company)
end

Dado /^que a representada tem um produto$/ do
  @product = Factory(:product, :company => @company)
end

Dado /^que um cliente existe$/ do
  @client = Factory(:client)
end

Dado /^que uma transportadora existe$/ do
  @carrier = Factory(:carrier)
end

Dado /^que eu estou na página de listar pedidos$/ do
  visit(orders_path)
end

Dado /^que eu estou na página de adicionar um item ao pedido$/ do
  visit(new_order_order_item_path(@order))
end

Dado /^que eu estou na página de editar um item do pedido$/ do
  @order_item = @order.order_items.first
  visit(edit_order_order_item_path(@order, @order_item))
end

Dado /^que eu estou na página de Pagamento, Comissão e Frete do pedido$/ do
  visit(edit_order_path(@order))
end

Quando /^eu estou na página do pedido$/ do
  visit(order_path(@order))
end

Quando /^eu selecionar um cliente$/ do
  select @client.name, :for => field_name(:order, :client)
end

Quando /^eu selecionar uma representada$/ do
  select @company.name, :for => field_name(:order, :company)
end

Quando /^eu esquecer de selecionar uma representada$/ do
end

Quando /^eu esquecer de selecionar um cliente$/ do
end

Quando /^eu preencher o formulário do item com dados válidos$/ do
  @order_item = Factory.build(:order_item,
                             :order => @order,
                             :product => @product)
  fill_order_item_form_with(@order_item)
end

Quando /^eu preencher o formulário do item com dados inválidos$/ do
  invalid_order_item = Factory.build(:invalid_order_item, :order => @order)
  fill_and_submit_order_item_form_with(invalid_order_item)
end

Quando /^eu enviar o formulário de pagamento e comissão com dados válidos$/ do
  fill_and_submit_order_payment_comission_and_freightage_form_with(@order)
end

Quando /^eu enviar o formulário de pagamento e comissão com dados inválidos$/ do
  @order.type_of_freight = ''
  @order.payment = []
  @order.discount = []
  fill_and_submit_order_payment_comission_and_freightage_form_with(@order)
end

Quando /^eu não selecionar uma transportadora$/ do
end

Quando /^eu selecionar frete do tipo "([^"]*)"$/ do |type|
  select_type_of_freight(type)
end

Quando /^eu selecionar uma transportadora$/ do
  select_carrier(@carrier.name)
end

Quando /^eu selecionar uma data que tenha pelo menos um pedido cadastrado$/ do
  date = Order.first.created_at
  visit(date_orders_path({:year => date.year, :month => date.month, :day => date.day}))
end

Quando /^eu selecionar uma data que não tenha pedidos cadastrados$/ do
  date = Order.first.created_at - 100.years
  visit(date_orders_path({:year => date.year, :month => date.month, :day => date.day}))
end

Quando /^eu buscar pelo código do pedido$/ do
  search("pedido #{@order.id}")
end

Então /^eu devo ver o pedido$/ do
  current_path.should == order_path(@order)
end

Então /^eu não devo ver o item$/ do
  page.should_not have_css("a[href='#{edit_order_order_item_path(@order, @order_item)}']")
end

Então /^eu devo ver a página de Adicionar Item ao pedido$/ do
  current_path.should == new_order_order_item_path(Order.last)
end

Então /^eu devo ver a página de Pagamento, Comissão e Frete do pedido$/ do
  current_path.should == payment_comission_and_freightage_order_path(Order.last)
end

Então /^eu devo ver os dados do pedido para revisão$/ do
  page.should have_css('table.order')
end

Então /^eu devo ver uma lista de pedidos$/ do
  page.should have_css('table.orders')
end

Então /^eu não devo ver uma lista de pedidos$/ do
  page.should_not have_css('table.orders')
end
