# encoding: utf-8

Dado /^que eu estou na página de adicionar representada$/ do
  visit(new_company_path)
end

Quando /^eu adicionar uma representada$/ do
  new_company = Factory.build(:company)
  fill_and_submit_company_form_with(new_company)
end

Quando /^eu adicionar uma representada com dados inválidos$/ do
  invalid_company = Factory.build(:invalid_company)
  fill_and_submit_company_form_with(invalid_company)
end

Quando /^eu adicionar uma representada com nome duplicado$/ do
  existing_company = Factory(:company)
  fill_and_submit_company_form_with(existing_company)
end

Então /^eu devo ver a nova representada$/ do
  current_path.should match /companies\/\d/
end

Então /^eu não devo ver a nova representada$/ do
  current_path.should_not match /companies\/\d/
end

Então /^eu devo ver os campos que contêm erros$/ do
  page.should have_selector('.field_with_errors #company_name')
  page.should have_selector('.field_with_errors #company_email')
end
