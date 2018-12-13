class CreatePhotos < ActiveRecord::Migration[5.1]
  def up
    create_table :photos
    add_reference :photos, :gallery, foreign_key: true
    add_column :photos, :photo_name, :string
    add_column :photos, :photo_desc, :text
    add_column :photos, :photo_url, :string
  end

  def down
    drop_table :photos
  end
end
