require 'spec_helper'

describe Company do

  subject { Factory(:company) }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should ensure_length_of(:name).is_at_most(255) }

  it { should validate_presence_of(:email) }
  it { should ensure_length_of(:email).is_at_most(255) }
  it { should_not allow_value("invalid").for(:email) }
  it { should_not allow_value("invalid@email").for(:email) }
  it { should allow_value("example@mail.com").for(:email) }

end
