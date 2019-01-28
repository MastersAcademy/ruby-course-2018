class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new; end

  def create
    user = User.find_by email: params[:email]
    return authenticate(user) if user.present?

    flash[:notice] = "Not found user \"#{params[:email]}\""
    redirect_to login_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

  private

  def authenticate(user)
    authenticated = user.authenticate params[:password]

    if user && authenticated
      session[:user_id] = user.id
      redirect_to categories_path
    else
      flash[:notice] = 'Password is invalid'
      redirect_to sessions_new_path
    end
  end
end
