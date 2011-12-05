require 'spec_helper'

describe Activity do

  it { should validate_presence_of(:activity_type) }

  it { should validate_presence_of(:target_id) }
  it { should validate_presence_of(:target_type) }
  it { should belong_to(:target) }

  it { should serialize(:data) }

  it { should have_db_column(:created_at) }

end
