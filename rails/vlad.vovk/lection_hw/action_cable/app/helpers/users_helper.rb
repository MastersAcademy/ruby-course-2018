module UsersHelper
  def current_user
    session[:user_id] ? User.find(session[:user_id]) : nil
  end
end
