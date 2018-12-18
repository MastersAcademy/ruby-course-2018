class CreateShops < ActiveRecord::Migration[5.1]
  def up
    create_table :shops
    add_column :shops, :name, :string
  end

  def down
    drop_table :shops
  end
end
