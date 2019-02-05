class SellersController < ApplicationController

  def index
    @sellers = Seller.all
  end
end
