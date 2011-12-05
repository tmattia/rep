class Carrier < ActiveRecord::Base

  default_scope :order => 'name ASC'

  validates :name, :presence => true,
                   :uniqueness => true,
                   :length => { :maximum => 255 }

end
