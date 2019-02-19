class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Done"
    else
      flash[:error] = 'EROR'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end