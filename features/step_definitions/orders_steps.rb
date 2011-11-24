# encoding: utf-8

Dado /^que eu estou na página de adicionar pedido$/ do
  @new_order = Factory.build(:order)
  @new_order.company.save
  @new_order.client.save
  visit(new_order_path)
end

Dado /^que um pedido existe$/ do
  @product = Factory(:product)
  @order = Factory(:order, :company => @product.company)
end

Dado /^que uma transportadora existe$/ do
  @carrier = Factory(:carrier)
end

Dado /^que eu estou na página de adicionar um item ao pedido$/ do
  visit(new_order_order_item_path(@order))
end

Dado /^que eu estou na página de Pagamento, Comissão e Frete do pedido$/ do
  visit(payment_comission_and_freightage_order_path(@order))
end

Quando /^eu estou na página do pedido$/ do
  visit(order_path(@order))
end

Quando /^eu preencher o formulário do pedido com dados válidos$/ do
  fill_order_form_with(@new_order)
end

Quando /^eu enviar o formulário do pedido com dados inválidos$/ do
  @new_order.company = nil
  @new_order.client = nil
  fill_and_submit_order_form_with(@new_order)
end

Quando /^eu preencher o formulário do item com dados válidos$/ do
  order_item = Factory.build(:order_item, :order => @order, :product => @product)
  fill_order_item_form_with(order_item)
end

Quando /^eu enviar o formulário do item com dados inválidos$/ do
  invalid_order_item = Factory.build(:invalid_order_item, :order => @order)
  fill_and_submit_order_item_form_with(invalid_order_item)
end

Quando /^eu preencher o formulário de Pagamento, Comissão e Frete com dados válidos$/ do
  fill_order_payment_comission_and_freightage_form_with(@order)
end

Quando /^eu enviar o formulário de Pagamento, Comissão e Frete com dados inválidos$/ do
  @order.type_of_freight = ''
  @order.payment = []
  @order.discount = []
  fill_and_submit_order_payment_comission_and_freightage_form_with(@order)
end

Quando /^eu selecionar "(.*)"$/ do |text|
  find("input[type='submit'][value='#{text}']").click
end

Quando /^eu selecionar frete do tipo "([^"]*)"$/ do |type|
  select_type_of_freight(type)
end

Quando /^eu selecionar uma transportadora$/ do
  select_carrier(@carrier.name)
end

Então /^eu devo ver o pedido$/ do
  current_path.should == order_path(@order)
end

Então /^eu devo ver a página de Adicionar Item ao pedido$/ do
  current_path.should == new_order_order_item_path(Order.last)
end

Então /^eu devo ver a página de Pagamento, Comissão e Frete do pedido$/ do
  current_path.should == payment_comission_and_freightage_order_path(Order.last)
end

Então /^eu devo ver os dados do pedido$/ do
  page.should have_css('table.order')
end
