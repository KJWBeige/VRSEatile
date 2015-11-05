class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    unless @user = current_user
      redirect_to user_path(current_user)
    end
    @orders = @user.orders
  end

  def create
    @user = User.new user_params
    @user.is_admin = false
    if @user.save
      redirect_to root_path, notice: "Sign Up Complete! Please Login."
    else
      render 'new'
  end

  private
  def user_params
    params.require(:user).permit(:email, :f_name,:l_name,:password,:password_confirmation)
end
end
