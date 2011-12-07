require 'spec_helper'

describe ClientObserver do

  describe '#after_create' do
    it 'should create a new activity' do
      client = Factory.build(:client)
      Activity.should_receive(:create).with({
        :activity_type => 'create',
        :target => client,
        :data => anything
      })
      client.save!
    end
  end

  describe '#after_update' do
    it 'should create a new activity' do
      client = Factory(:client)
      Activity.should_receive(:create).with({
        :activity_type => 'update',
        :target => client,
        :data => anything
      })
      client.name = 'A new name'
      client.save!
    end
  end

end
