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
  f.company   { |a| a.association(:company) }
  f.client    { |a| a.association(:client) }
  f.payment   ["30", "60", "90"]
  f.discount  ["5", "3.5"]
  f.interest  0
  f.comission 6.5

  f.after_create { |o| Factory(:order_item, :order => o) }
end

Factory.define :order_item do |f|
  f.quantity   2
  f.unit_price 10.0
  f.order      { |a| a.association(:order) }
  f.product    { |a| a.association(:product) }
end

Factory.define :invalid_order_item, :class => OrderItem do |f|
end
