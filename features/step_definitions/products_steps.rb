# encoding: utf-8

Dado /^que eu estou na página de adicionar produto$/ do
  visit(new_product_path)
end

Dado /^que eu estou na página de editar produto$/ do
  product = Factory(:product)
  visit(edit_product_path(product))
end

Dado /^que pelo menos um produto esteja cadastrado$/ do
  Factory(:product)
end

Dado /^que eu estou na página de um produto$/ do
  product = Factory(:product)
  visit(product_path(product))
end

Quando /^eu estou na página de listar produtos$/ do
  visit(products_path)
end

Quando /^eu preencher o formulário do produto com dados válidos$/ do
  new_product = Factory.build(:product)
  fill_and_submit_product_form_with(new_product)
end

Quando /^eu preencher o formulário do produto com dados inválidos$/ do
  invalid_product = Factory.build(:invalid_product)
  fill_and_submit_product_form_with(invalid_product)
end

Quando /^eu preencher o formulário com o código de um produto que já existe$/ do
  existing_product = Factory(:product)
  fill_and_submit_product_form_with(existing_product)
end

Então /^eu devo ver o produto$/ do
  current_path.should match /^\/produtos\/\d/
end

Então /^eu devo ver os dados do produto$/ do
  page.should have_selector('table.product')
end

Então /^eu devo ver a lista dos produtos cadastrados$/ do
  page.should have_selector('table.products')
end
