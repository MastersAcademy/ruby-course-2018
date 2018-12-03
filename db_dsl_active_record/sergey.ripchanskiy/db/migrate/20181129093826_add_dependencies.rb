# Add dependencies to books table
class AddDependencies < ActiveRecord::Migration[5.1]
  def up
    add_reference :books, :user, foreign_key: true
    add_reference :books, :category, foreign_key: true
    add_reference :books, :seller, foreign_key: true
  end

  def down
    remove_column :books, :user_id
    remove_column :books, :category_id
    remove_column :books, :seller_id
  end
end
