require 'factory_girl'

Factory.sequence :email do |n|
  "somebody#{n}@example.com"
end

Factory.sequence :name do |n|
  "Name ##{n}"
end

Factory.define :company do |c|
  c.name  { Factory.next(:name) }
  c.email { Factory.next(:email) }
end

Factory.define :invalid_company, :class => Company do |c|
  c.name  ''
  c.email 'invalid@email'
end
