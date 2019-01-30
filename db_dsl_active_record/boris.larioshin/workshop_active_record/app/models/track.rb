class Track < ActiveRecord::Base
  has_and_belongs_to_many :playlists

  validates :title, presence: true
  validates :artist, presence: true
end
