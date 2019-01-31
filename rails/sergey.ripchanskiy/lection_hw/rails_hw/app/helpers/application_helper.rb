module ApplicationHelper

  def categories
    Category.pluck(:name, :id)
  end

  def sellers
    Seller.pluck(:name, :id)
  end

end
