require 'pry'
require './config/initializers/database'

User.create(first_name: '  Nikolay' ,
            last_name: 'Braslavets'  ,
            email: 'mail@wxmple.com')

current_user = User.last
current_user.full_name_and_email

# Return Validation failed: Email has already been taken
# User.create!(first_name: '  Nikolay' , last_name: 'Braslavets'  , email: 'mail@wxmple.com')
# User.last.full_name_and_email
#
current_user.playlists.create(name: 'For work hardly',
                              description: 'Indian pop songs')

current_user.playlists.create(name: 'For work none hardly',
                              description: 'Indian pop songs from inidian film')

# Return  Validation failed: Name playlist has already been taken
# User.last.playlists.create!(name_playlist: 'For work none hardly', description: 'Indian pop songs from inidian film')
current_user.show_all_playlists

current_user.songs.create(artist: 'Moize NC',
                          name: 'Master of pupets',
                          genre: 'Shophop',
                          playlist_id: "#{current_user.playlists.last}")

current_user.songs.create(artist: 'Bronze NC',
                          name: 'Master of duckets',
                          genre: 'Hlophlop',
                          playlist_id: "#{current_user.playlists.first}")


current_user.show_all_songs

