class Playlist < ActiveRecord::Base
  belongs_to :user
  has_many :songs, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :description, presence: true

end