class CreateImages < ActiveRecord::Migration[5.1]
  def up
    create_table :images do |t|
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
