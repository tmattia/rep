require 'factory_girl'

Factory.sequence :email do |n|
  "somebody#{n}@example.com"
end

Factory.sequence :name do |n|
  "Name ##{n}"
end

Factory.sequence :code do |n|
  "CODE#{n}"
end

Factory.sequence :cnpj do |n|
  "1122233344445#{n}"
end

Factory.define :company do |c|
  c.name  { Factory.next(:name) }
  c.email { Factory.next(:email) }
end

Factory.define :invalid_company, :class => Company do |c|
  c.name  ''
  c.email 'invalid@email'
end

Factory.define :client do |f|
  f.name { Factory.next(:name) }
  f.cnpj { Factory.next(:cnpj) }
end

Factory.define :product do |f|
  f.company { |a| a.association(:company) }
  f.code    { Factory.next(:code) }
end

Factory.define :order do |f|
  f.company         { |a| a.association(:company) }
  f.client          { |a| a.association(:client) }
  f.payment         ["30", "60", "90"]
  f.discount        ["5", "3.5"]
  f.interest        0
  f.comission       6.5
  f.type_of_freight 'CIF'
end

Factory.define :order_to_be_confirmed, :parent => :order do |f|
  f.after_create do |order|
    order.order_items << Factory(:order_item, :order => order)
    order.finish_draft_and_send
  end
end

Factory.define :order_confirmed, :parent => :order_to_be_confirmed do |f|
  f.after_create do |order|
    order.confirm
  end
end

Factory.define :order_rejected, :parent => :order_to_be_confirmed do |f|
  f.after_create do |order|
    order.reject
  end
end

Factory.define :order_cancelled_after_sent, :parent => :order_to_be_confirmed do |f|
  f.after_create do |order|
    order.cancel
  end
end

Factory.define :order_cancelled_after_confirmed, :parent => :order_confirmed do |f|
  f.after_create do |order|
    order.cancel
  end
end

Factory.define :order_item do |f|
  f.quantity   2
  f.unit_price 10.0
  f.order      { |a| a.association(:order) }
  f.product    { |a| a.association(:product) }
end

Factory.define :invalid_order_item, :class => OrderItem do |f|
  f.quantity   -1
  f.unit_price -1
end

Factory.define :carrier do |f|
  f.name { Factory.next(:name) }
end
