require_relative 'concerns/name_formatter'

class User < ActiveRecord::Base
  include NameFormatter

  has_many :playlists, dependent: :destroy
  has_many :songs, through: :playlists
end
