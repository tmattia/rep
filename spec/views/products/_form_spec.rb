require 'spec_helper'

describe 'products/_form.html.haml' do

  let(:product) { Factory(:product) }

  before do
    assign(:product, product)
    render
  end

  subject { rendered }

  [:company, :code, :description].each do |field|
    it { should have_field(t("activerecord.attributes.product.#{field}")) }
  end

end
