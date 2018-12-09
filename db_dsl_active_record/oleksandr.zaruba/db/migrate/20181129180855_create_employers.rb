class CreateEmployers < ActiveRecord::Migration[5.1]
  def up
    create_table :employers

    add_column :employers, :department, :string
    add_index :employers, :employer_id, :department
  end

  def down
    drop_table :employers
  end
end
