require 'active_record'

class Category < ActiveRecord::Base
  has_many :movies, through: :category_movies
end