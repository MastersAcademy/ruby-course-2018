class Book < ActiveRecord::Base
  belongs_to :seller
  belongs_to :category
  validates :seller, :presence => true
  validates :category, :presence => true
end