class Song < ActiveRecord::Base
  validates :title, presence: true
end