require 'spec_helper'

describe Client do

  subject { Factory(:client) }

  it { should have_many(:orders) }

  it { should validate_presence_of(:company_name) }
  it { should validate_uniqueness_of(:company_name) }
  it { should ensure_length_of(:company_name).is_at_most(255) }

  it { should validate_presence_of(:cnpj) }
  it { should validate_uniqueness_of(:cnpj) }
  it { should ensure_length_of(:cnpj).is_at_least(14) }
  it { should ensure_length_of(:cnpj).is_at_most(18) }

end

