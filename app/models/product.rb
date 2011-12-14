class Product < ActiveRecord::Base

  default_scope :order => 'code ASC'

  has_many :activities, :as => :target

  belongs_to :company

  validates :company_id, :presence => true

  validates :code, :presence => true,
                   :uniqueness => true,
                   :length => { :maximum => 255 }

  def to_param
    "#{id}-#{code.parameterize}"
  end

end
