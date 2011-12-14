class Client < ActiveRecord::Base

  default_scope :order => 'name ASC'

  has_many :activities, :as => :target

  has_many :orders

  validates :name, :presence => true,
                   :uniqueness => true,
                   :length => { :maximum => 255 }

  validates :cnpj, :presence => true,
                   :uniqueness => true,
                   :length => { :minimum => 14, :maximum => 18 }

  validates :company_name, :length => { :maximum => 255 }

  validates :email, :length => { :maximum => 255 }

  validates :phone, :length => { :maximum => 255 }

  validates :fax, :length => { :maximum => 255 }

  validates :skype, :length => { :maximum => 255 }

  validates :msn, :length => { :maximum => 255 }

  validates :street, :length => { :maximum => 255 }

  validates :zip_code, :length => { :within => 8..10 }, :allow_blank => true

  validates :city, :length => { :maximum => 255 }

  validates :state, :length => { :is => 2 }, :allow_blank => true

  def to_param
    "#{id}-#{name.parameterize}"
  end

end
