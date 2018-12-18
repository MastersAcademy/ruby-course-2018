require 'pry'
require './config/initializers/database'

# User.create!(first_name: '  gggg      ', last_name: 'Who')
# User.create(first_name: 'Doctor', last_name: 'Who')
# puts User.last.full_name
#
# Shop.create

p Shop.all
p User.all