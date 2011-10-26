class Client < ActiveRecord::Base

  has_many :orders

  validates :corporate_name, :presence => true,
                             :uniqueness => true,
                             :length => { :maximum => 255 }

end
