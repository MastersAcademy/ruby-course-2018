class Post < ActiveRecord::Base
  has_many :images, as: :imageable
  belongs_to :user
  validates :title, :body, presence: true
end
