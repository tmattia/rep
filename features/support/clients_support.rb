# encoding: UTF-8

module ClientsSupport
  def fill_and_submit_client_form_with(client)
    within 'form.client' do
      fill_text_fields_with(client, [:company_name, :cnpj])
      submit
    end
  end
end

World(ClientsSupport)
