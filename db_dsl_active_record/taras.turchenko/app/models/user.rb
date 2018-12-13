require 'active_record'

class User < ActiveRecord::Base
  belongs_to :movie

  validates_presence_of :password
  validates_presence_of :login
end