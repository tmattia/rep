# encoding: utf-8

Dado /^que eu estou na página de adicionar cliente/ do
  visit(new_client_path)
end

Dado /^que eu estou na página de editar cliente/ do
  client = Factory(:client)
  visit(edit_client_path(client))
end

Dado /^que pelo menos um cliente esteja cadastrado$/ do
  Factory(:client)
end

Dado /^que eu estou na página de um cliente/ do
  client = Factory(:client)
  client.orders << Factory(:order, :client => client)
  visit(client_path(client))
end

Dado /^que eu estou na página de listar clientes$/ do
  visit(clients_path)
end

Quando /^eu buscar pelo código do cliente$/ do
  search("cliente #{@client.id}")
end

Quando /^eu estou na página de listar clientes/ do
  visit(clients_path)
end

Quando /^eu preencher o formulário do cliente com dados válidos$/ do
  new_client = Factory.build(:client)
  fill_and_submit_client_form_with(new_client)
end

Quando /^eu preencher o formulário do cliente com dados inválidos$/ do
  invalid_client = Factory.build(:invalid_client)
  fill_and_submit_client_form_with(invalid_client)
end

Quando /^eu preencher o formulário com o nome de um cliente que já existe/ do
  existing_client = Factory(:client)
  fill_and_submit_client_form_with(existing_client)
end

Quando /^eu preencher o formulário com o CNPJ de um cliente que já existe/ do
  existing_client = Factory(:client)
  fill_and_submit_client_form_with(existing_client)
end

Então /^eu devo ver o cliente$/ do
  current_path.should match /^\/clientes\/\d/
end

Então /^eu devo ver os dados do cliente$/ do
  page.should have_selector('table.client')
end

Então /^eu devo ver a lista dos clientes cadastrados$/ do
  page.should have_selector('table.clients')
end

Então /^eu devo ver uma lista de pedidos recentes$/ do
  page.should have_css('table.orders')
end
