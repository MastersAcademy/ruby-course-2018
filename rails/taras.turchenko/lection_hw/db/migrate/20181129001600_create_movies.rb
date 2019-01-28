# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[5.1]
  def up
    create_table :movies

    add_column :movies, :name, :string
    add_column :movies, :description, :string
    add_column :movies, :rating, :integer, default: 0
    add_column :movies, :author_id, :integer
    add_column :movies, :url, :string

    add_index :movies, :author_id
  end

  def down
    drop_table :movies
  end
end
