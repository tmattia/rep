module CompaniesSupport
  def fill_and_submit_company_form_with(company)
    within 'form.company' do
      fill_in 'Nome', :with => company.name
      fill_in 'Email', :with => company.email
      find('input[type=submit]').click
    end
  end
end

World(CompaniesSupport)
