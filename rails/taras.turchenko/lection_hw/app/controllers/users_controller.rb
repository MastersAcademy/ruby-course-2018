class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new; end

  def create
    user = User.create! user_params
    redirect_to sessions_create_path(email: user.email, password: user.password)
  rescue
    flash[:notice] = $ERROR_INFO
    redirect_to new_user_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
