class CreateMusicPlaylistsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists_songs, id: false do |t|
      t.integer :playlist_id, null: false
      t.integer :song_id, null: false
    end

    add_index :playlists_songs, [:playlist_id, :song_id], unique: true
  end
end
