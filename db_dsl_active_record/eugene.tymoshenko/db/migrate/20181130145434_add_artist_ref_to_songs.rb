class AddArtistRefToSongs < ActiveRecord::Migration[5.1]
  def up
    add_reference :songs, :artist, foreign_key: true
  end

  def down
    remove_reference :songs, :artist, foreign_key: true
  end
end
