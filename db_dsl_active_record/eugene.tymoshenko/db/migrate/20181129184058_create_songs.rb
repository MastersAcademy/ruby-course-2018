class CreateSongs < ActiveRecord::Migration[5.1]
  def up
    create_table :songs

    add_column :songs, :title, :string
    add_column :songs, :album_name, :string
  end

  def down
    drop_table :songs
  end
end
