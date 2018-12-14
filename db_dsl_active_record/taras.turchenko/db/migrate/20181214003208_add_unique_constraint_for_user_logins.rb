# frozen_string_literal: true

class AddUniqueConstraintForUserLogins < ActiveRecord::Migration[5.1]
  def up
    add_index :users, :login, unique: true
  end

  def down
    remove_index :users, :login
  end
end
