class Order < ActiveRecord::Base

  belongs_to :client
  validates :client, :presence => true

  belongs_to :company
  validates :company, :presence => true

  has_many :order_items

end
