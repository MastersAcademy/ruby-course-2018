class CreateBooks < ActiveRecord::Migration[5.1]
def up
  create_table :books
  add_column :books, :name, :string
  add_column :books, :author, :string
  add_column :books, :category, :string
  add_column :books, :year, :Date
end

def down
  drop_table :books
end

end
