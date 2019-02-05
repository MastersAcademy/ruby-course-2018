class Song < ActiveRecord::Base
  has_and_belongs_to_many :playlists
  belongs_to :artist

  validates :title, presence: true, uniqueness: true
end
