class OrderItem < ActiveRecord::Base

  belongs_to :product
  validates :product_id, :presence => true

  belongs_to :order
  validates :order, :presence => true

  validates :quantity, :presence => true,
                       :numericality => { :only_integer => true,
                                          :greater_than => 0 }

  validates :unit_price, :presence => true,
                         :numericality => { :greater_than => 0 }

  validates :color, :length => { :maximum => 255 }

  def total_price
    unit_price * quantity
  end

end
