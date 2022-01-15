class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    # email: params[:email], username: params[:username], password: params[:password]
    if @user.save
      redirect_to new_user_path
    else 
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:email,:username,:password)
  end
end
