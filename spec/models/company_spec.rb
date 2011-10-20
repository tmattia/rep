require 'spec_helper'

describe Company do

  it "should be valid from factory" do
    company = Factory.build(:company)
    company.should be_valid
  end

  it "should have a name" do
    invalid = Factory.build(:company, :name => nil)
    invalid.should have(1).error_on(:name)
    invalid.should_not be_valid
  end

  it "should not have a duplicated name" do
    valid = Factory.create(:company)
    valid.should be_valid

    invalid = Factory.build(:company, :name => valid.name)
    invalid.should have(1).error_on(:name)
    invalid.should_not be_valid
  end

  it "should have a valid email" do
    invalid = Factory.build(:company, :email => nil)
    invalid.should have(2).error_on(:email)
    invalid.should_not be_valid

    invalid.email = 'invalid@email'
    invalid.should have(1).error_on(:email)
    invalid.should_not be_valid
  end

end
