require 'pry'
require './config/initializers/database.rb'

User.create(first_name: 'Sherlock', last_name: 'Holmes', email: '221BBakerStreet1@london.uk', password: 'detective')
User.create(first_name: 'John', last_name: 'Watson', email: '221BBakerStreet2@london.uk', password: 'doctor')
User.create(first_name: 'James', last_name: 'Moriarty', email: '221BBakerStreet3@london.uk', password: 'professor')
User.create(first_name: 'Mrs.', last_name: 'Hudson', email: '221BBakerStreet4@london.uk', password: 'landlady')
User.create(first_name: 'Arthur ', last_name: 'Conan Doyle', email: '221BBakerStreet5@london.uk', password: 'writer')
puts User.first.first_name
puts User.first.last_name
Playlist.create(title: 'Classic', description: "melody for violin", users_id: 1)
