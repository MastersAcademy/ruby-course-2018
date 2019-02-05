class CreateRoomsUsersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms_users, id: false do |t|
      t.integer :room_id
      t.integer :user_id
    end
    add_index :rooms_users, [:room_id, :user_id]
  end
end
