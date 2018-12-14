# frozen_string_literal: true

# adding column 'url' into table 'movies'
class AddMovieUrls < ActiveRecord::Migration[5.1]
  def up
    add_column :movies, :url, :string
  end

  def down
    remove_column :movies, :url
  end
end
