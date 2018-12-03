class Offer < ActiveRecord::Base
  attr_accessor :offer_number, :price, :discount, :user_id, :book_id
  before_validation :offer_name
  validates :book, presence: true
  has_many :users
  has_one :book

  def offer_name
    [@offer_number, @book_id.to_s, @price.to_s].map(&:strip).delete_if(&:blank?).join(' ')
  end
  def discount_price
    @price * @discount
  end

end