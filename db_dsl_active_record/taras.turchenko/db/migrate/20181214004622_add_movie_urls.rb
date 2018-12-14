# frozen_string_literal: true

class AddMovieUrls < ActiveRecord::Migration[5.1]
  def up
    add_column :movies, :url, :string
  end

  def down
    remove_column :movies, :url
  end
end
