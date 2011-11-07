class Client < ActiveRecord::Base

  has_many :orders

  validates :company_name, :presence => true,
                           :uniqueness => true,
                           :length => { :maximum => 255 }

  validates :cnpj, :presence => true,
                   :uniqueness => true,
                   :length => { :minimum => 14, :maximum => 18 }

end
