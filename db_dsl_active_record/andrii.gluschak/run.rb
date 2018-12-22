require 'pry'
require './config/initializers/database.rb'

user = User.create!(first_name: 'Somebody', last_name: 'Anyone')
user.posts.create(title: 'head2', body: 'text2')
user.images.create(url: 'test4')

puts User.all.last.attributes
puts Post.all.last.attributes
puts Image.all.last.attributes

