require 'pry'
require './config/initializers/database'

User.create!(first_name: 'Test', last_name: 'Test')
Item.create!(user_id: 1, name: 'Passcode')
Review.create!(user_id: 1, item_id: 1, review: 'Test Test')

puts User.all.last.attributes
puts Item.all.last.attributes
puts Review.all.last.attributes