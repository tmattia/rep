class Product < ActiveRecord::Base

  belongs_to :company

  validates :company_id, :presence => true

  validates :code, :presence => true,
                   :uniqueness => true,
                   :length => { :maximum => 255 }

end
