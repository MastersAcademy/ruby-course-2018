# frozen_string_literal: true

# Creating table categories
class CreateCategories < ActiveRecord::Migration[5.1]
  def up
    create_table :categories

    add_column :categories, :name, :string
    add_column :categories, :description, :string
  end

  def down
    drop_table :categories
  end
end
