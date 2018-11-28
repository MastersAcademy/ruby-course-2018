require 'pry'
require './config/initializers/database.rb'

User.create!(first_name: ' Somebody', last_name: 'John')

puts User.all.map(&:full_name)