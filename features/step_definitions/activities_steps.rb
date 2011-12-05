# encoding: utf-8

Quando /^um pedido for cadastrado/ do
  @order = Factory(:order)
end

Então /^eu devo ver o pedido na lista de atividades$/ do
  visit root_path
  page.should have_css(".activities a[href='#{order_path(@order)}']")
end
