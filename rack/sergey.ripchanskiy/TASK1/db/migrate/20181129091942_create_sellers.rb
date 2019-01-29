# Create sellers table
class CreateSellers < ActiveRecord::Migration[5.1]
  def up
    create_table :sellers
    add_column :sellers, :name, :string
  end

  def down
    drop_table :sellers
  end
end
