class AddDependenciesToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :user, foreign_key: true
    add_reference :books, :category, foreign_key: true
    add_reference :books, :seller, foreign_key: true
  end
end
