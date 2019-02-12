class Playlist < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :description, presence: true
end
