require 'pry'
require './config/initializers/database'

User.create(first_name: '  Nikolay' ,
            last_name: 'Braslavets'  ,
            email: 'mail@wxmple.com')

puts User.last.full_name_and_email

# Return Validation failed: Email has already been taken
# User.create!(first_name: '  Nikolay' , last_name: 'Braslavets'  , email: 'mail@wxmple.com')
# User.last.full_name_and_email
#
User.last.playlists.create(name: 'For work hardly',
                              description: 'Indian pop songs')

User.last.playlists.create(name: 'For work none hardly',
                              description: 'Indian pop songs from inidian film')

# Return  Validation failed: Name playlist has already been taken
# User.last.playlists.create!(name_playlist: 'For work none hardly', description: 'Indian pop songs from inidian film')
User.last.show_all_playlists

User.last.songs.create(artist: 'Moize NC',
                          name: 'Master of pupets',
                          genre: 'Shophop',
                          playlist: User.last.playlists.last)

User.last.songs.create(artist: 'Bronze NC',
                          name: 'Master of duckets',
                          genre: 'Hlophlop',
                          playlist: User.last.playlists.first)
User.last.show_all_songs