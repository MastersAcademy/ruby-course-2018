class Photo < ActiveRecord::Base
  belongs_to :gallery
  belongs_to :user
  
  validates :photo_url, uniqueness: { case_sensitive: true }
  validates :photo_name, :photo_url, presence: true
end