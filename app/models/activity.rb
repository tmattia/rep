class Activity < ActiveRecord::Base

  belongs_to :target, :polymorphic => true
  validates :target_id, :presence => true
  validates :target_type, :presence => true

  validates :type, :presence => true

  serialize :data

end
