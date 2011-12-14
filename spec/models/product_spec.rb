require 'spec_helper'

describe Product do

  before do
    first_product = Factory(:product)
  end

  it { should have_many(:activities) }

  it { should belong_to(:company) }
  it { should validate_presence_of(:company_id) }

  it { should validate_presence_of(:code) }
  it { should validate_uniqueness_of(:code) }
  it { should ensure_length_of(:code).is_at_most(255) }

  it { should have_db_column(:description) }

end


