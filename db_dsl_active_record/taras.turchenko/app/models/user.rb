require 'active_record'

class User < ActiveRecord::Base
  belongs_to :movie

  validates :avatar, presence: true
  validates :password, presence: true
  validates :login, presence: true
end