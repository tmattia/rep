require 'spec_helper'

describe 'clients/_form.html.haml' do

  before do
    assign(:client, Factory(:client))
    render
  end

  subject { rendered }

  it { should have_field(t('simple_form.labels.company_name')) }
  it { should have_field(t('simple_form.labels.cnpj')) }

end

