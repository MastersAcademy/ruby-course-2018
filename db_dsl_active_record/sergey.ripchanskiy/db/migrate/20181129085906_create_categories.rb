class CreateCategories < ActiveRecord::Migration[5.1]
def up
  create_table :categories
  add_column :categories, :name, :string
end

def down
end
end