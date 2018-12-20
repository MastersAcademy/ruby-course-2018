require 'pry'
require './config/initializers/database.rb'

User.create!(first_name: 'Somebody', last_name: 'Anyone')
Post.create!(title: 'head', body: 'text', user_id: '1')
Image.create!(url:'test', imageable_id: '1', imageable_type: 'jpeg')

puts User.all.last.attributes
puts Post.all.last.attributes
puts Image.all.last.attributes
