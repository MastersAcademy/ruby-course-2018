# Add email to sellers table
class AddEmailToSellers < ActiveRecord::Migration[5.1]
  def up
    add_column :sellers, :email, :string
  end

  def down
    remove_column :sellers, :email, :string
  end
end
