class Offer < ActiveRecord::Base
  validates :offer_name, :book, :price, presence: true
  has_many :users
  has_one :book

  def offer_fullname
    "Full name: #{offer_name} costs: #{price}"
  end

  def discount_price
    price * discount
  end

end