require 'spec_helper'

describe ProductObserver do

  describe '#after_create' do
    it 'should create a new activity' do
      product = Factory.build(:product)
      Activity.should_receive(:create).with({
        :activity_type => 'create',
        :target => product,
        :data => anything
      })
      product.save!
    end
  end

  describe '#after_update' do
    it 'should create a new activity' do
      product = Factory(:product)
      Activity.should_receive(:create).with({
        :activity_type => 'update',
        :target => product,
        :data => anything
      })
      product.description = 'A new description'
      product.save!
    end
  end

end

