class CreatePosts < ActiveRecord::Migration[5.1]
  def up
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.timestamp
      t.integer :user_id
    end
  end

  def down
    drop_table :posts
  end
end
