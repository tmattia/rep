require 'spec_helper'

describe 'companies/_form.html.haml' do

  before do
    assign(:company, Factory(:company))
    render
  end

  subject { rendered }

  it { should have_field(t('simple_form.labels.name')) }
  it { should have_field(t('simple_form.labels.email')) }
  it { should have_field(t('simple_form.labels.company_name')) }
  it { should have_field(t('simple_form.labels.cnpj')) }
  it { should have_field(t('simple_form.labels.street')) }
  it { should have_field(t('simple_form.labels.zip_code')) }
  it { should have_field(t('simple_form.labels.city')) }
  it { should have_field(t('simple_form.labels.state')) }
  it { should have_field(t('simple_form.labels.phone')) }
  it { should have_field(t('simple_form.labels.fax')) }
  it { should have_field(t('simple_form.labels.msn')) }
  it { should have_field(t('simple_form.labels.skype')) }

end
