class CreateTableGalleries < ActiveRecord::Migration[5.2]

  def up
    create_table :galleries
    add_reference :galleries, :user, foreign_key: true
    add_column :galleries, :name, :string
    add_column :galleries, :desc, :text
  end

  def down
    drop_table :galleries
  end

end
