require 'spec_helper'

describe Order do

  subject { Factory(:order) }

  it { should belong_to(:client) }
  it { should validate_presence_of(:client_id) }

  it { should belong_to(:company) }
  it { should validate_presence_of(:company_id) }

  it { should have_many(:order_items) }

  it { should have_db_column(:created_at) }

end
