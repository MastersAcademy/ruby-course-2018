class AddPlaylistRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :playlist, foreign_key: true
  end
end
