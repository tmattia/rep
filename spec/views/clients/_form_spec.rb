require 'spec_helper'

describe 'clients/_form.html.haml' do

  before do
    assign(:client, Factory(:client))
    render
  end

  subject { rendered }

  it { should have_field(t('simple_form.labels.name')) }
  it { should have_field(t('simple_form.labels.company_name')) }
  it { should have_field(t('simple_form.labels.cnpj')) }
  it { should have_field(t('simple_form.labels.email')) }
  it { should have_field(t('simple_form.labels.phone')) }
  it { should have_field(t('simple_form.labels.fax')) }
  it { should have_field(t('simple_form.labels.skype')) }
  it { should have_field(t('simple_form.labels.msn')) }
  it { should have_field(t('simple_form.labels.street')) }
  it { should have_field(t('simple_form.labels.zip_code')) }
  it { should have_field(t('simple_form.labels.city')) }
  it { should have_field(t('simple_form.labels.state')) }

end
