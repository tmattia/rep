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

Factory.define :company do |c|
  c.name  { Factory.next(:name) }
  c.email { Factory.next(:email) }
end

Factory.define :invalid_company, :class => Company do |c|
  c.name  ''
  c.email 'invalid@email'
end

Factory.define :client do |f|
  f.corporate_name { Factory.next(:name) }
end

Factory.define :product do |f|
  f.code { Factory.next(:code) }
end

Factory.define :order do |f|
  f.company { |a| a.association(:company) }
  f.client  { |a| a.association(:client) }

  f.after_create { |o| Factory(:order_item, :order => o) }
end

Factory.define :order_item do |f|
  f.quantity   2
  f.unit_price 10.0
  f.order      { |a| a.association(:order) }
  f.product    { |a| a.association(:product) }
end
