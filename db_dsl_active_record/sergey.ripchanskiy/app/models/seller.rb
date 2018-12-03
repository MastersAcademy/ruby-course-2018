# Seller model
class Seller < ActiveRecord::Base
  has_many :books, dependent: :destroy
  validates :name, presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }
end
