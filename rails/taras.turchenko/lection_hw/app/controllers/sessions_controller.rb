class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new; end

  def create
    email = params[:email]
    user = User.find_by email: email

    if user.blank?
      flash[:notice] = "Not found user #{email}"
      redirect_to sessions_new_path
    end

    authenticated = user.authenticate params[:password]

    if user && authenticated
      session[:user_id] = user.id
      redirect_to categories_path
    else
      flash[:notice] = 'Password is invalid'
      redirect_to sessions_new_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Logged out!'
    redirect_to login_path
  end
end
