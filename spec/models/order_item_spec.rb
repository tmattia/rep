require 'spec_helper'

describe OrderItem do

  subject { Factory(:order_item) }

  it { should belong_to(:product) }
  it { should validate_presence_of(:product_id) }

  it { should belong_to(:order) }
  it { should validate_presence_of(:order) }

  it { should validate_presence_of(:quantity) }
  it { should validate_numericality_of(:quantity) }

  it { should validate_presence_of(:unit_price) }
  it { should validate_numericality_of(:unit_price) }

  it { should ensure_length_of(:color).is_at_most(255) }

  describe '#total_price' do
    before do
      @order_item = Factory(:order_item, :unit_price => 10.5, :quantity => 2)
    end

    subject { @order_item.total_price }

    it { should == 21.0 }
  end

end
