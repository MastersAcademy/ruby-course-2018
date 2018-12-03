class CreateReviews < ActiveRecord::Migration[5.1]
  def up
    create_table :reviews

    add_column :reviews, :item_id, :integer
    add_column :reviews, :user_id, :integer
    add_column :reviews, :review, :text

    add_reference :review, :user
    add_reference :review, :item
  end

  def down
    drop_table :reviews
  end
end
