class CreateCategoriesMovies < ActiveRecord::Migration[5.1]
  def up
    create_table :categories_movies
    add_column :categories_movies, :category_id, :integer
    add_column :categories_movies, :movie_id, :integer

    add_index :categories_movies, :category_id
    add_index :categories_movies, :movie_id
  end

  def down
    drop_table :categories_movies
  end
end
