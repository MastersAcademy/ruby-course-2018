class CreateMusicPlaylistsJoinTable < ActiveRecord::Migration[5.1]
  def up
    create_table :playlists_songs, :id => false do |t|
      t.integer :playlist_id
      t.integer :song_id
    end

    add_index :playlists_songs, [:playlist_id, :song_id]
  end

  def down
    drop_table :playlists_songs
  end
end
