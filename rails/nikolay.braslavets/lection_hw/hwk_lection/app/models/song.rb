class Song < ApplicationRecord
  belongs_to :user
  belongs_to :playlist, optional: true

  validates :name, presence: true, length: { minimum: 2 }
  validates :artist, presence: true
  validates :genre, presence: true
end
