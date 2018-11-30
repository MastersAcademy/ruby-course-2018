class CreatePlaylists < ActiveRecord::Migration[5.1]
  def up
    create_table :playlists

    add_column :playlists, :title, :string
    add_column :playlists, :songs_count, :integer, default: 0
  end

  def down
    drop_table :playlists
  end
end
