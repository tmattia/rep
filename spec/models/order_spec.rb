require 'spec_helper'

describe Order do

  it { should belong_to(:client) }
  it { should belong_to(:company) }

  it { should have_db_column(:created_at) }

end
