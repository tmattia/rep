module CompaniesSupport
  def fill_and_submit_company_form_with(company)
    within 'form.company' do
      fill_text_fields_with(company, [:name, :email, :company_name, :cnpj,
                                     :phone, :fax, :msn, :skype, :street,
                                     :zip_code, :city])
      select_collection('states', company, 'state')
      submit
    end
  end
end

World(CompaniesSupport)
