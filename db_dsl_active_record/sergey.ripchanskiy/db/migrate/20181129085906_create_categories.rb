# Create categories table
class CreateCategories < ActiveRecord::Migration[5.1]
  def up
    create_table :categories
    add_column :categories, :name, :string
  end

  def down
    drop_table :categories
  end
end
