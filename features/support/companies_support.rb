module CompaniesSupport
  def fill_and_submit_company_form_with(company)
    within '#new_company' do
      fill_in 'Nome', :with => company.name
      fill_in 'Email', :with => company.email
      click_button 'Adicionar Representada'
    end
  end
end

World(CompaniesSupport)
