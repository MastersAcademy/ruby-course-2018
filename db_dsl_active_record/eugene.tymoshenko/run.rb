require 'pry'
require './config/initializers/database'

puts 'Gotcha! It works for you, master!'

user1 = User.create(first_name: 'Eugene', last_name: 'Beliy')
user1.playlists.create(title: 'Ruski rep')
user1.playlists.count == 1
artist1 = Artist.create(first_name: 'Morgen', last_name: 'Shtern')
song1 = Song.create(title: 'diss na vseh', album_name: 'izi rep', artist_id: artist1.id)
user1.playlists.first.add_song(song1)
song1.playlists.first.user == user1
user2 = User.create(first_name: 'Dekion', last_name: 'Beliy')
user2.playlists.create(title: 'Repachok')
user2.playlists.first.add_song(song1)
song1.playlists.count
user1.songs.count == 1
Song.count == 1
