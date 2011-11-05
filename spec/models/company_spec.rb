require 'spec_helper'

describe Company do

  subject { Factory(:company) }

  it { should have_many(:products) }
  it { should have_many(:orders) }

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should ensure_length_of(:name).is_at_most(255) }

  it { should validate_presence_of(:email) }
  it { should ensure_length_of(:email).is_at_most(255) }
  it { should_not allow_value("invalid").for(:email) }
  it { should_not allow_value("invalid@email").for(:email) }
  it { should allow_value("example@mail.com").for(:email) }

  it { should ensure_length_of(:company_name).is_at_most(255) }

  it { should allow_value("").for(:cnpj) }
  it { should ensure_length_of(:cnpj).is_at_least(14) }
  it { should ensure_length_of(:cnpj).is_at_most(18) }

  it { should ensure_length_of(:street).is_at_most(255) }

  it { should allow_value("").for(:zip_code) }
  it { should ensure_length_of(:zip_code).is_at_least(8) }
  it { should ensure_length_of(:zip_code).is_at_most(10) }

  it { should ensure_length_of(:city).is_at_most(255) }

  it { should allow_value("").for(:state) }
  it { should ensure_length_of(:state).is_equal_to(2) }

  it { should ensure_length_of(:phone).is_at_most(255) }

  it { should ensure_length_of(:fax).is_at_most(255) }

  it { should ensure_length_of(:msn).is_at_most(255) }

  it { should ensure_length_of(:skype).is_at_most(255) }


end
