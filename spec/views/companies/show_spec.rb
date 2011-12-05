require 'spec_helper'

describe 'companies/show.html.haml' do

  let(:company) { Factory(:company) }

  before do
    assign(:company, company)
    render
  end

  subject { rendered }

  it { should have_css("table.company") }
  it { should have_css("a[href='#{edit_company_path(company)}']") }
  it { should have_css("a[href='#{new_order_path}?company=#{company.id}']") }

  context 'when there are recent orders' do
    before do
      Factory(:order, :company => company)
      render
    end

    subject { rendered }

    it { should have_css('table.orders') }
  end

end
