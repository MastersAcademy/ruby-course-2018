# frozen_string_literal: true

# Adding table 'users'
class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users

    add_column :users, :email, :string
  end

  def down
    drop_table :users
  end
end
