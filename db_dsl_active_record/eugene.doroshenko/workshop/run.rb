require 'pry'
require './config/initializers/database'


User.create!(first_name: '    Doctor     ', last_name: 'Who')
puts User.last.full_name