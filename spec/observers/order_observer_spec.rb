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

  describe '#after_finish_draft_and_send' do
    it 'should create a new activity' do
      order = Factory(:order_with_items)
      Activity.should_receive(:create).with({
        :activity_type => 'finish_draft_and_send',
        :target => order,
        :data => anything
      })
      order.finish_draft_and_send!
    end
  end

end
