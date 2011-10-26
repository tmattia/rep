require 'spec_helper'

describe Product do

  subject { Factory(:product) }

  it { should validate_presence_of(:code) }
  it { should validate_uniqueness_of(:code) }
  it { should ensure_length_of(:code).is_at_most(255) }

end


