require 'pry'
require './config/initializers/database'

# User.create(first_name: 'Doctor', last_name: 'Who')
User.all.each { |f| puts f.full_name }