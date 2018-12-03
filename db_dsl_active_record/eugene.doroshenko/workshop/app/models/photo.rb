class Photo < ActiveRecord::Base
  belongs_to :gallery
  belongs_to :user
  
  validates :url, uniqueness: { case_sensitive: true }
  validates :name, :url, presence: true
end