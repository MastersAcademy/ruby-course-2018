require 'pry'
require './config/initializers/database'

User.create(first_name: 'Doctor', last_name: 'Who')
puts 'Gotcha! It works for you, master!'

User.create!(first_name: 'asd        ', last_name: 'ATRING')
puts User.last.full_name

User.create(first_name: 'Eugene', last_name: 'Beliy')
User.first.playlists.create(title: 'Ruski rep')
User.first.playlists.count == 1
Artist.create(first_name: 'Morgen', last_name: 'Shtern')
User.first.playlists.first.songs.create(title: 'diss na vseh', album_name: 'izi rep', artist_id: Artist.first.id)
Song.first.playlists.first.user == User.first
User.create(first_name: 'Dekion', last_name: 'Beliy')
User.last.playlists.create(title: 'Repachok')
User.last.playlists.first.songs << Song.first
Song.first.playlists.count
User.first.songs.count == 1
Song.count == 1
