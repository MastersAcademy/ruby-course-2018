class Playlist < ActiveRecord::Base
  has_and_belongs_to_many :tracks
  belongs_to :user

  validates :title, presence: true
end
