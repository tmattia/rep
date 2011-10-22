require 'spec_helper'

describe Company do

  it "should be valid from factory" do
    company = Factory.build(:company)
    company.should be_valid
  end

  describe "name" do
    it "should be required" do
      invalid = Factory.build(:company, :name => nil)
      invalid.should have(1).error_on(:name)
      invalid.should_not be_valid

      invalid.name = ''
      invalid.should have(1).error_on(:name)
      invalid.should_not be_valid
    end

    it "should not be longer than 255 chars" do
      long_name = 'a' * 256
      invalid = Factory.build(:company, :name => long_name)
      invalid.should have(1).error_on(:name)
      invalid.should_not be_valid
    end

    it "should be unique" do
      valid = Factory.create(:company)
      valid.should be_valid

      invalid = Factory.build(:company, :name => valid.name)
      invalid.should have(1).error_on(:name)
      invalid.should_not be_valid
    end
  end

  describe "email" do
    it "should be required" do
      invalid = Factory.build(:company)
      invalid.email = nil
      invalid.should have(1).error_on(:email)
      invalid.should_not be_valid

      invalid.email = ''
      invalid.should have(1).error_on(:email)
      invalid.should_not be_valid
    end

    it "should be valid" do
      invalid = Factory.build(:company, :email => 'invalid@email')
      invalid.should have(1).error_on(:email)
      invalid.should_not be_valid
    end

    it "should not be longer than 255 chars" do
      long_name = ('a' * 250) + '@email.com'
      invalid = Factory.build(:company, :email => long_name)
      invalid.should have(1).error_on(:email)
      invalid.should_not be_valid
    end
  end

end
