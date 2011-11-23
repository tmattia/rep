require 'spec_helper'

describe 'orders/show.html.haml' do

  let(:order) { Factory(:order) }

  before do
    assign(:order, order)
    render
  end

  subject { rendered }

  it { should have_css(".order_created_at") }
  it { should have_css(".order_client a[href='#{client_path(order.client)}']") }
  it { should have_css(".order_company a[href='#{company_path(order.company)}']") }


end
