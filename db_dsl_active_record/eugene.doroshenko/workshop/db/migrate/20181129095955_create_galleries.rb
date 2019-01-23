class CreateGalleries < ActiveRecord::Migration[5.1]
  def up
    create_table :galleries
    add_reference :galleries, :user, foreign_key: true
    add_column :galleries, :gallery_name, :string
    add_column :galleries, :gallery_desc, :text
  end

  def down
    drop_table :galleries
  end
end
