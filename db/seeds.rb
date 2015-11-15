# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.new
u.email = "admin@test.com"
u.password = "12345678"
u.password_confirmation = "12345678"
u.is_admin = true
u.save

['stylish_portfolio','creative','agency','business_casual','grayscale','landing_page'].each do |lp|
  Page.create(Page.lp_data(lp)) if PageData.public_send(lp).present?
end

for i in 1..Page.all.size do
  Product.create(title: '好產品', description: '好產品不解釋', page_id: i, price: 9999, quantity: 1)
end