class CreatePosts < ActiveRecord::Migration[5.1]
  def up
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.integer :user_id

      t.timestamps
    end
    add_index :posts, :user_id
  end

  def down
    drop_table :posts
  end
end
