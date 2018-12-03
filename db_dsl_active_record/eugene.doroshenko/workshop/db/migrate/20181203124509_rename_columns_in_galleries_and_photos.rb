class RenameColumnsInGalleriesAndPhotos < ActiveRecord::Migration[5.1]
  def up
    rename_column :photos, :photo_name, :name
    rename_column :photos, :photo_desc, :desc
    rename_column :photos, :photo_url, :url
    rename_column :galleries, :gallery_name, :name
    rename_column :galleries, :gallery_desc, :desc
  end

  def down
    rename_column :photos, :name, :photo_name
    rename_column :photos, :desc, :photo_desc
    rename_column :photos, :url, :photo_url
    rename_column :galleries, :name, :gallery_name
    rename_column :galleries, :desc, :gallery_desc
  end
end
