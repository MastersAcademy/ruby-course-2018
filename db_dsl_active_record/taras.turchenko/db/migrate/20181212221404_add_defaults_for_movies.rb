# frozen_string_literal: true

# Adding default value for column 'rating'
class AddDefaultsForMovies < ActiveRecord::Migration[5.1]
  def up
    change_column_default(:movies, :rating, 0)
  end

  def down
    change_column_default(:movies, :rating, nil)
  end
end
