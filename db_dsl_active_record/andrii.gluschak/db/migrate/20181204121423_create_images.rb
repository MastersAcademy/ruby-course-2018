class CreateImages < ActiveRecord::Migration[5.1]
  def up
    create_table :images do |t|
      t.string :url
      t.integer :imageable_id
      t.string :imageable_type
      t.timestamps
    end
    add_index :images, [:imageable_type, :imageable_id]
  end

  def down
    drop_table :images
  end
end
