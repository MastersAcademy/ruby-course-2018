class CreateWorks < ActiveRecord::Migration[5.1]
  def up
    create_table :works

    add_column :works, :profession, :string
    add_index :works, :work_id, :integer

  end

  def down
    drop_table :works
  end
end
