class Carrier < ActiveRecord::Base

  default_scope :order => 'name ASC'

  has_many :orders

  validates :name, :presence => true,
                   :uniqueness => true,
                   :length => { :maximum => 255 }

end
