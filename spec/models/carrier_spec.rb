require 'spec_helper'

describe Carrier do

  subject { Factory(:carrier) }

  it { should have_many(:orders) }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should ensure_length_of(:name).is_at_most(255) }

end
