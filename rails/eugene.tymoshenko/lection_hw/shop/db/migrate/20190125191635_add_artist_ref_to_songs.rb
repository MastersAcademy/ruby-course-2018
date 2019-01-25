class AddArtistRefToSongs < ActiveRecord::Migration[5.2]
  def change
    add_reference :songs, :artist, foreign_key: true
  end
end
