class Activity < ActiveRecord::Base

  default_scope :order => 'created_at DESC'

  belongs_to :target, :polymorphic => true
  validates :target_id, :presence => true
  validates :target_type, :presence => true

  validates :activity_type, :presence => true

  serialize :data

end
