class Photo < ActiveRecord::Base
  belongs_to :gallery
  validates :photo_url, uniqueness: { case_sensitive: true }
  validates :photo_name, :photo_url, presence: true
end