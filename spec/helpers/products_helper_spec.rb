require 'spec_helper'

describe ProductsHelper do

  describe 'link_to_product' do
    before do
      @product = Factory(:product)
    end

    subject { link_to_product(@product) }

    it { should include(@product.code) }
    it { should include(@product.company.name) }
  end

end
