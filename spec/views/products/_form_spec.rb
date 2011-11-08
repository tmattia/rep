require 'spec_helper'

describe 'products/_form.html.haml' do

  let(:product) { Factory(:product) }

  before do
    assign(:product, product)
    render
  end

  subject { rendered }

  it { should have_field(t('simple_form.labels.company')) }
  it { should have_field(t('simple_form.labels.code')) }
  it { should have_field(t('simple_form.labels.description')) }

end
