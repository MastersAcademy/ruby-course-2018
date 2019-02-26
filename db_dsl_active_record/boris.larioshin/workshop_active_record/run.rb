require 'pry'
require 'faker'
require './config/initializers/database.rb'

# Generate users
15.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
end

# Generate tracks
50.times do
  Track.create(
    artist: Faker::Artist.name,
    title: Faker::Lorem.sentence,
    album: Faker::Music.album
  )
end

#Add playlist for user
10.times do |id|
  User.find_by_id(id + 1).playlists.create(title: Faker::Lorem.word)
end

#Add track in playlist
10.times do |id|
  Playlist.find_by_id(id + 1).tracks << Track.find_by_id(rand(1..50))
end