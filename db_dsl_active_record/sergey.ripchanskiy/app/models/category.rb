class Category < ActiveRecord::Base
  has_many :books, dependent: :destroy
end