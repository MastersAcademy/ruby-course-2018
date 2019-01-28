# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :email, unique: true
  end

  def down
    drop_table :users
  end
end
