require 'pry'
require './config/initializers/database.rb'

User.create!(first_name: ' Somebody    ', last_name: 'Who')
puts User.last.full_name
