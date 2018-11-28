class CreateCategoryMovies < ActiveRecord::Migration[5.1]
  def up
    create_table :category_movies
    add_column :category_movies, :category_id, :integer
    add_column :category_movies, :movie_id, :integer

    add_index :category_movies, :category_id
    add_index :category_movies, :movie_id
  end

  def down
    drop_table :category_movies
  end
end
