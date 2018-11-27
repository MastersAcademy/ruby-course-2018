require 'pry'
require './config/initializers/database'

User.create!(first_name: 'Igor', last_name: 'Poroshenko')

puts User.last.full_name
