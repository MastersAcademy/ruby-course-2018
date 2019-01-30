class CreatePlaylistsTracks < ActiveRecord::Migration[5.1]
  def up
    create_table :playlists_tracks

    add_column :playlists_tracks, :playlist_id, :integer
    add_column :playlists_tracks, :track_id, :integer

    add_index :playlists_tracks, :playlist_id
    add_index :playlists_tracks, :track_id
  end

  def down
    drop_table :playlists_tracks
  end
end
