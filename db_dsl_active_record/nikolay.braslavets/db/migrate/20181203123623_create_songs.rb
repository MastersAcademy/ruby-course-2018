class CreateSongs < ActiveRecord::Migration[5.1]
  def up
    create_table :songs

    add_column :songs, :artist, :string
    add_column :songs, :name, :string
    add_column :songs, :genre, :string
    add_column :songs, :user_id, :integer
    add_column :songs, :playlist_id, :integer

  end

  def down
    drop_table :songs
  end
end
