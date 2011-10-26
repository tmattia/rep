class OrderItem < ActiveRecord::Base

  belongs_to :product
  belongs_to :order

  validates :quantity, :presence => true,
                       :numericality => { :only_integer => true,
                                          :greater_than => 0 }

  validates :unit_price, :presence => true,
                         :numericality => { :greater_than => 0 }

end
