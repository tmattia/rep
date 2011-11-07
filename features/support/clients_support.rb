# encoding: UTF-8

module ClientsSupport
  def fill_and_submit_client_form_with(client)
    within 'form.client' do
      fill_text_fields_with(client, [:name, :company_name, :cnpj, :email,
                                     :phone, :fax, :skype, :msn, :street,
                                     :zip_code, :city])
      select_collection('states', client, 'state')
      submit
    end
  end
end

World(ClientsSupport)
