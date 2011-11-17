class Company < ActiveRecord::Base

  has_many :products
  has_many :orders

  validates :name, :presence => true,
                   :uniqueness => true,
                   :length => { :maximum => 255 }

  validates :email, :presence => true,
                    :allow_blank => true,
                    :email => :true,
                    :length => { :maximum => 255 }

  validates :company_name, :length => { :maximum => 255 }

  validates :cnpj, :length => { :within => 14..18 }, :allow_blank => true

  validates :street, :length => { :maximum => 255 }

  validates :zip_code, :length => { :within => 8..10 }, :allow_blank => true

  validates :city, :length => { :maximum => 255 }

  validates :state, :length => { :is => 2 }, :allow_blank => true

  validates :phone, :length => { :maximum => 255 }

  validates :fax, :length => { :maximum => 255 }

  validates :msn, :length => { :maximum => 255 }

  validates :skype, :length => { :maximum => 255 }

  def to_param
    "#{id}-#{name.parameterize}"
  end

end
