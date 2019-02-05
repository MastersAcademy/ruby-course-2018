class Book < ApplicationRecord
  belongs_to :seller
  belongs_to :category
  validates :seller, :category, presence: true
end