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

end
