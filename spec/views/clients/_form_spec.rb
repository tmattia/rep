require 'spec_helper'

describe 'clients/_form.html.haml' do

  before do
    assign(:client, Factory(:client))
    render
  end

  subject { rendered }

  [ :name, :company_name, :cnpj, :email, :phone, :fax, :skype, :msn, :street,
    :zip_code, :city, :state
  ].each do |field|
    it { should have_field(t("activerecord.attributes.client.#{field}")) }
  end

end
