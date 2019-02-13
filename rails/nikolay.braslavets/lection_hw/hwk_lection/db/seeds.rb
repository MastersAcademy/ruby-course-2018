# Add User
User.create(first_name: 'Nikolay',
            last_name: 'Nikolarav',
            email: 'mail@mail.com',
            password_digest: BCrypt::Password.create('123456'))


# Add Song without palylist
Song.create(name: 'Firts song in the world',
            artist: 'Best winiamin',
            genre: 'Alternative',
            user_id: 1)

Song.create(name: 'Maniac song',
            artist: 'Best lemon',
            genre: 'Metal',
            user_id: 1)

Song.create(name: 'Other way',
            artist: 'Macalalbal',
            genre: 'Pop',
            user_id: 1)

Song.create(name: 'Need no moore',
            artist: 'Vodka',
            genre: 'Dance',
            user_id: 1)

# Add Playlist
Playlist.create(name: 'Work',
                description: 'Best winiamin song',
                user_id: 1)

Playlist.create(name: 'Relax',
                description: 'Relax winiamin song',
                user_id: 1)

Playlist.create(name: 'Past',
                description: 'Past winiamin song',
                user_id: 1)

Playlist.create(name: 'Future',
                description: 'Future winiamin song',
                user_id: 1)

# # Add Song with palylist
Song.create(name: 'Song for Work playlist',
            artist: 'Best winiamin',
            genre: 'Alternative',
            user_id: 1,
            playlist_id: 1)

Song.create(name: 'Song for Relax playlist',
            artist: 'Best lemon',
            genre: 'Metal',
            user_id: 1,
            playlist_id: 2)

Song.create(name: 'Song for Past playlist',
            artist: 'Macalalbal',
            genre: 'Pop',
            user_id: 1,
            playlist_id: 3)

Song.create(name: 'Song for Future playlist',
            artist: 'Vodka',
            genre: 'Dance',
            user_id: 1,
            playlist_id: 4)
