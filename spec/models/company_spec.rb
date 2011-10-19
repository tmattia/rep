require 'spec_helper'

describe Company do

  it "should be valid from factory" do
    company = Factory.build(:company)
    company.should be_valid
  end

  it "should have a name" do
    company = Factory.build(:company, :name => nil)
    company.should have(1).error_on(:name)
    company.should_not be_valid
  end

  it "should not have a duplicated name" do
    valid = Factory.create(:company)
    valid.should be_valid

    invalid = Factory.build(:company, :name => valid.name)
    invalid.should have(1).error_on(:name)
    invalid.should_not be_valid
  end

end
