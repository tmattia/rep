require 'spec_helper'

describe 'carriers/show.html.haml' do

  let(:carrier) { Factory(:carrier) }

  before do
    assign(:carrier, carrier)
    render
  end

  subject { rendered }

  it { should have_css("table.carrier") }
  it { should have_css("a[href='#{edit_carrier_path(carrier)}']") }

end
