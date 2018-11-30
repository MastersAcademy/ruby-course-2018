class Playlist < ActiveRecord::Base
  validates :title, presence: true
end