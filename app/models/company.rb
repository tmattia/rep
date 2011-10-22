class Company < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 255 }
  validates :email, :email => :true, :length => { :maximum => 255 }

end
