require 'spec_helper'

describe OrderItem do

  subject { Factory(:order_item) }

  it { should belong_to(:product) }
  it { should validate_presence_of(:product) }

  it { should belong_to(:order) }
  it { should validate_presence_of(:order) }

  it { should validate_presence_of(:quantity) }
  it { should validate_numericality_of(:quantity) }

  it { should validate_presence_of(:unit_price) }
  it { should validate_numericality_of(:unit_price) }

end
