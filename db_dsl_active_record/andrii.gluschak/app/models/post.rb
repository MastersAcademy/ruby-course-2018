class Post < ActiveRecord::Base
  has_many :image, as: :imageable
  belongs_to :user
  validates :title, :body, presence: true
end
