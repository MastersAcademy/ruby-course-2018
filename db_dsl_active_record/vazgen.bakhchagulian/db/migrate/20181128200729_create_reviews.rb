class CreateReviews < ActiveRecord::Migration[5.1]
  def up
    create_table :reviews

    add_column :reviews, :item_id, :integer
    add_column :reviews, :name, :string
  end

  def down
    drop_table :reviews
  end
end
