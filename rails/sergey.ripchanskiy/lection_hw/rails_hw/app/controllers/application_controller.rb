class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def categories
    Category.all.map { |c| [c.categories, c.id] }
  end
  helper_method :categories

  def sellers
    Seller.all.map { |c| [c.name, c.id] }
  end
  helper_method :sellers

end
