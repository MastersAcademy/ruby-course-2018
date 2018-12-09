class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users

    add_reference :employers, :user, foreign_key: true
    add_reference :works, :user, foreign_key: true

    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_index :users, :user_id, :integer

  end

  def down
    drop_table :users
  end
end
