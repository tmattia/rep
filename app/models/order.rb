class Order < ActiveRecord::Base

  belongs_to :client
  validates :client_id, :presence => true

  belongs_to :company
  validates :company_id, :presence => true

  has_many :order_items

end
