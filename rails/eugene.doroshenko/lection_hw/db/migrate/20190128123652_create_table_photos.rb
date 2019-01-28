class CreateTablePhotos < ActiveRecord::Migration[5.2]
  def up
    create_table :photos
    add_reference :photos, :user, foreign_key: true
    add_reference :photos, :gallery, foreign_key: true
    add_column :photos, :name, :string
    add_column :photos, :desc, :text
    add_column :photos, :url, :string
  end

  def down
    drop_table :photos
  end

end
