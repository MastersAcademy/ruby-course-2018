class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users

    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_reference :playlists, :user, foreign_key: true
  end

  def down
    drop_table :users
  end
end
