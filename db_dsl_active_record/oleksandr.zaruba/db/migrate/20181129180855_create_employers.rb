class CreateEmployers < ActiveRecord::Migration[5.1]
  def up
    create_table :employers

    add_column :employers, :department, :string
  end

  def down
    drop_table :employers
  end
end
