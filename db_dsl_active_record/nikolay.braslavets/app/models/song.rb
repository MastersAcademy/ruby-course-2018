class Song  < ActiveRecord::Base
  belongs_to :user
  belongs_to :playlist

  validates :name, presence: true, length: { minimum: 2 }
  validates :artist, presence: true
  validates :genre, presence: true
end