require 'spec_helper'

describe Client do

  subject { Factory(:client) }

  it { should have_many(:orders) }

  it { should validate_presence_of(:corporate_name) }
  it { should validate_uniqueness_of(:corporate_name) }
  it { should ensure_length_of(:corporate_name).is_at_most(255) }

end

