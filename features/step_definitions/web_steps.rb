# encoding: utf-8

Então /^eu devo ver uma mensagem de sucesso$/ do
  page.should have_selector('#flash.success')
end

Então /^eu devo ver uma mensagem de erro/ do
  page.should have_selector('#flash.error')
end

Então /^eu devo ver o campo "(.+)" com o erro "(.+)"/ do |field, message|
  container = "div[contains(@class, 'field_with_errors')]"
  field_element = "label[contains(text(), '#{field}')]"
  message_element = "span[contains(text(), '#{message}')]"
  page.should have_xpath("//#{container}[#{field_element}][#{message_element}]")
end
