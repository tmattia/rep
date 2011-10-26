class Product < ActiveRecord::Base

  belongs_to :company

  validates :code, :presence => true,
                   :uniqueness => true,
                   :length => { :maximum => 255 }

end
