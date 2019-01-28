class AddCollumsToUser < ActiveRecord::Migration[5.2]
  
  def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end

  def down
    drop_table :users
  end

end
