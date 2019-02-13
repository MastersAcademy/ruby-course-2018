class AddPlaylistIdToSong < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :playlist_id, :integer
    add_index :songs, :playlist_id
  end
end
