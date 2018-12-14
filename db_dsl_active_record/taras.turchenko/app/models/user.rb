# frozen_string_literal: true

require 'active_record'

# User ActiveRecord model
class User < ActiveRecord::Base
  has_many :movies, {
    class_name: 'Movie',
    primary_key: 'id',
    foreign_key: 'author_id'
  }

  validates :password, presence: true
  validates :login, presence: true
end
