class Category < ApplicationRecord
  has_many :books, dependent: :destroy
end