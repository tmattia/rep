class Company < ActiveRecord::Base

  has_many :products

  validates :name, :presence => true,
                   :uniqueness => true,
                   :length => { :maximum => 255 }

  validates :email, :presence => true,
                    :allow_blank => true,
                    :email => :true,
                    :length => { :maximum => 255 }

end
