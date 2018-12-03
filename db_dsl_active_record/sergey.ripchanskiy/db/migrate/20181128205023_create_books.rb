# Create book table
class CreateBooks < ActiveRecord::Migration[5.1]
  def up
    create_table :books
    add_column :books, :title, :string
    add_column :books, :author, :string
    add_column :books, :description, :string
    add_column :books, :price, :integer
  end

  def down
    drop_table :books
  end
end
