class AddUserRefToPlaylists < ActiveRecord::Migration[5.1]
  def up
    add_reference :playlists, :user, foreign_key: true
  end

  def down
    remove_reference :playlists, :user, foreign_key: true
  end
end
