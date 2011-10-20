class Company < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :email => true

end
