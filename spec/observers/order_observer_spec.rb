require 'spec_helper'

describe OrderObserver do

  describe '#after_create' do

    it 'should create a new activity' do
      order = Factory.build(:order)
      Activity.should_receive(:create).with({
        :activity_type => 'create',
        :target => order,
        :data => anything
      })
      order.save!
    end

  end

end
