# encoding: UTF-8

Dado /^que eu estou na página de adicionar Transportadora$/ do
  visit(new_carrier_path)
end

Dado /^que eu estou na página de editar Transportadora$/ do
  @carrier = Factory(:carrier)
  visit(edit_carrier_path(@carrier))
end

Dado /^que pelo menos uma Transportadora esteja cadastrada$/ do
  @carrier = Factory(:carrier)
end

Dado /^que eu estou na página de uma Transportadora$/ do
  @carrier = Factory(:carrier)
  visit(carrier_path(@carrier))
end

Quando /^eu preencher o formulário da Transportadora com dados válidos$/ do
  new_carrier = Factory.build(:carrier)
  fill_and_submit_carrier_form_with(new_carrier)
end

Quando /^eu preencher o formulário com o nome de uma Transportadora que já existe$/ do
  existing_carrier = Factory(:carrier)
  fill_and_submit_carrier_form_with(existing_carrier)
end

Quando /^eu estou na página de listar Transportadoras$/ do
  visit(carriers_path)
end

Então /^eu devo ver a lista das Transportadoras cadastradas$/ do
  page.should have_css('table.carriers')
end

Então /^eu devo ver os dados da Transportadora$/ do
  page.should have_css('table.carrier')
end

Então /^eu devo ver a Transportadora$/ do
  current_path.should match /^\/transportadoras\/\d$/
end
