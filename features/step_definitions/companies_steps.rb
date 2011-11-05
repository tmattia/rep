# encoding: utf-8

Dado /^que eu estou na página de adicionar representada$/ do
  visit(new_company_path)
end

Dado /^que eu estou na página de editar representada$/ do
  company = Factory(:company)
  visit(edit_company_path(company))
end

Dado /^que pelo menos uma representada esteja cadastrada$/ do
  Factory(:company)
end

Dado /^que eu estou na página de uma representada$/ do
  company = Factory(:company)
  visit(company_path(company))
end

Quando /^eu estou na página de listar representadas$/ do
  visit(companies_path)
end

Quando /^eu preencher o formulário com dados válidos$/ do
  new_company = Factory.build(:company)
  fill_and_submit_company_form_with(new_company)
end

Quando /^eu preencher o formulário com dados inválidos$/ do
  invalid_company = Factory.build(:invalid_company)
  fill_and_submit_company_form_with(invalid_company)
end

Quando /^eu preencher o formulário com o nome de uma representada que já existe/ do
  existing_company = Factory(:company)
  fill_and_submit_company_form_with(existing_company)
end

Então /^eu devo ver a representada$/ do
  current_path.should match /^\/companies\/\d$/
end

Então /^eu devo ver os dados da representada$/ do
  page.should have_selector('table.company')
end

Então /^eu devo ver os campos que contêm erros$/ do
  page.should have_selector('.field_with_errors #company_name')
  page.should have_selector('.field_with_errors #company_email')
end

Então /^eu devo ver a lista das representadas cadastradas$/ do
  page.should have_selector('table.companies')
end
