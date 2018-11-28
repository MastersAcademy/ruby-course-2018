require 'active_record'

class Movie < ActiveRecord::Base
  has_one :author, class_name: 'User', foreign_key: 'author_id'
  has_many :categories, through: :category_movies
end