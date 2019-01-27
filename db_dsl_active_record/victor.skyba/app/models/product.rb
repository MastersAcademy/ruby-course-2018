class Product < ApplicationRecord
  belongs_to :shop
  has_many :order_products
  has_many :orders, through: :order_products

  validates_presence_of :price_cents, :quantity, :name
end
