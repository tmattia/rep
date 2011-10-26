class Product < ActiveRecord::Base

  validates :code, :presence => true,
                   :uniqueness => true,
                   :length => { :maximum => 255 }

end
