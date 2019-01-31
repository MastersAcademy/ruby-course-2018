class RenameCategoriesColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :categories, :name
  end
end
