# frozen_string_literal: true

require 'active_record'

class User < ActiveRecord::Base
  has_many :movies, {
    class_name: 'Movie',
    primary_key: 'id',
    foreign_key: 'author_id'
  }

  validates_presence_of :password
  validates_presence_of :login
end
