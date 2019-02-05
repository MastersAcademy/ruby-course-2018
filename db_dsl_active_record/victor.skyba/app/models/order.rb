class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products
  has_many :products, through: :order_products

  def total_price
    products.sum(:price_cents).to_i
  end
end