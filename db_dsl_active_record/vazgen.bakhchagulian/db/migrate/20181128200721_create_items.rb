class CreateItems < ActiveRecord::Migration[5.1]
  def up
    create_table :items

    # add_column :items, :user_id, :integer
    add_column :items, :name, :string

    add_reference :item, :user, foreign_key: true
  end

  def down
    drop_table :items
  end
end
