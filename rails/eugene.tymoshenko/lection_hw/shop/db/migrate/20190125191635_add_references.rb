class AddReferences < ActiveRecord::Migration[5.2]
  def change
    add_reference :songs, :artist, foreign_key: true
    add_reference :users, :playlist, foreign_key: true
    add_reference :playlists, :user, foreign_key: true
  end
end
