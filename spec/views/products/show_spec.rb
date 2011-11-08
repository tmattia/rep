require 'spec_helper'

describe 'products/show.html.haml' do

  let(:product) { Factory(:product) }

  before do
    assign(:product, product)
    render
  end

  subject { rendered }

  it { should have_css("table.product") }
  it { should have_css("a[href='#{edit_product_path(product)}']") }

end
