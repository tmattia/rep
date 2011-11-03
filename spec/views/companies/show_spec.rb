require 'spec_helper'

describe 'companies/show.html.haml' do

  let(:company) { Factory(:company) }

  before do
    assign(:company, company)
    render
  end

  subject { rendered }

  it { should have_css("a[href='#{edit_company_path(company)}']") }



end
