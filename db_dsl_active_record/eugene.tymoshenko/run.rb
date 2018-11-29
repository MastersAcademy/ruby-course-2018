require 'pry'
require './config/initializers/database'

# User.create(firstrst_name: 'Doctor', last_name: 'Who')
# puts 'Gotcha! It works for you, master!'

User.create!(first_name: 'asd        ', last_name: 'ATRING')
puts User.last.full_name