require 'pry'
require './config/initializers/database.rb'

User.create!(first_name: 'Doctor', last_name: 'Watson')
User.create(first_name: 'Doctor', last_name: 'House')
puts User.first.first_name
puts User.first.last_name
puts User.first.id
Playlist.create(title: 'Classic', users_id: 1)
