class CreateWorks < ActiveRecord::Migration[5.1]
  def up
    create_table :works

    add_column :works, :profession, :string
  end

  def down
    drop_table :works
  end
end
