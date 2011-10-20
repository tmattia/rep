require 'factory_girl'

Factory.define :user do |u|
  u.name 'Test User'
  u.email 'user@test.com'
  u.password 'please'
end

Factory.define :company do |c|
  c.name 'First Company'
  c.email 'email@company.com'
end
