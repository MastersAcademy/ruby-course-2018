# frozen_string_literal: true

# Adding unique constraint for user`s login
class AddUniqueConstraintForUserLogins < ActiveRecord::Migration[5.1]
  def up
    add_index :users, :login, unique: true
  end

  def down
    remove_index :users, :login
  end
end
