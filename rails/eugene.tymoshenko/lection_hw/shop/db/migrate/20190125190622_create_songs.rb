class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs

    add_column :songs, :title, :string
    add_column :songs, :album_name, :string
  end
end
