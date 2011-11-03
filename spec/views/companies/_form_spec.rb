require 'spec_helper'

describe 'companies/_form.html.haml' do

  before do
    assign(:company, Factory(:company))
    render
  end

  subject { rendered }

  it { should have_field(t('simple_form.labels.name')) }
  it { should have_field(t('simple_form.labels.email')) }

end
