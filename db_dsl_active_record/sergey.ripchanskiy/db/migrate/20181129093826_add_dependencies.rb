class AddDependencies < ActiveRecord::Migration[5.1]
def up
  add_column :books, :user_id, :integer
  add_column :books, :category_id, :integer
  add_column :books, :seller_id, :integer
end

def down
end
end
