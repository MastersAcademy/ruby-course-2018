class AddPlaylistRefToUsers < ActiveRecord::Migration[5.1]
  def up
    add_reference :users, :playlist, foreign_key: true
  end

  def down
    remove_reference :users, :playlist, foreign_key: true
  end
end
