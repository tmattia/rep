require 'spec_helper'

describe 'clients/show.html.haml' do

  let(:client) { Factory(:client) }

  before do
    assign(:client, client)
    render
  end

  subject { rendered }

  it { should have_css("table.client") }
  it { should have_css("a[href='#{edit_client_path(client)}']") }
  it { should have_css("a[href='#{new_order_path}?client=#{client.id}']") }
  it { should have_css(".actions a.map") }

  context 'when there are recent orders' do
    before do
      Factory(:order, :client => client)
      render
    end

    subject { rendered }

    it { should have_css('table.orders') }
  end

end
