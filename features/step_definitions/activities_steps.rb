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

Quando /^um cliente for cadastrado$/ do
  @client = Factory(:client)
end

Quando /^um cliente for editado$/ do
  @client = Factory(:client)
  @client.name = "A unique new name"
  @client.save
end

Quando /^um produto for cadastrado$/ do
  @product = Factory(:product)
end

Quando /^um produto for editado$/ do
  @product = Factory(:product)
  @product.description = 'Editing description'
  @product.save
end

Então /^eu devo ver o pedido como "([^"]*)" na lista de atividades$/ do |status|
  visit root_path
  page.should have_content("Pedido #{@order.id} #{status}")
end

Então /^eu devo ver o cliente como "([^"]*)" na lista de atividades$/ do |status|
  visit root_path
  page.should have_content("Cliente #{@client.name} #{status}")
end

Então /^eu devo ver o produto como "([^"]*)" na lista de atividades$/ do |status|
  visit root_path
  page.should have_content("Produto #{@product.code} #{status}")
end
