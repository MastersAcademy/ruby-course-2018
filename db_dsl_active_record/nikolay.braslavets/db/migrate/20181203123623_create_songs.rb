class CreateSongs < ActiveRecord::Migration[5.1]
  def up
    create_table :songs

    add_column :songs, :artist, :string
    add_column :songs, :name, :string
    add_column :songs, :genre, :string
    add_reference :songs, :user, foreign_key: true
    add_reference :songs, :playlist, foreign_key: true
  end

  def down
    drop_table :songs
  end
end
