require 'spec_helper'

describe StatesCollectionHelper do

  describe 'states_collection' do
    before do
      @collection = helper.states_collection
    end

    it 'should return an array' do
      @collection.should be_a_kind_of(Array)
    end

    it 'should return at least one element' do
      @collection.length.should > 0
    end

    it 'should have key and value for every element' do
      @collection.each do |c|
        c.length.should == 2
      end
    end
  end

  describe 'state_name' do
    it 'should return nil when given an empty state abbreviation' do
      state_name('').should be_nil
    end

    it 'should return the state name when given a valid state abbreviation' do
      state_name('RS').should == I18n.t('states_collection.RS')
    end
  end

end
