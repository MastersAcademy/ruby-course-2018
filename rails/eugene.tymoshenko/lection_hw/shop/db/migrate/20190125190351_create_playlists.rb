class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists

    add_column :playlists, :title, :string
    add_column :playlists, :songs_count, :integer, default: 0
  end
end
