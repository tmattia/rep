require 'spec_helper'

describe 'companies/_form.html.haml' do

  before do
    assign(:company, Factory(:company))
    render
  end

  subject { rendered }

  [ :name, :email, :company_name, :cnpj, :street, :zip_code, :city, :state,
    :phone, :fax, :msn, :skype
  ].each do |field|
    it { should have_field(t("activerecord.attributes.company.#{field}")) }
  end

end
