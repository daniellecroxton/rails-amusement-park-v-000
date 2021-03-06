class UsersController < ApplicationController
  def index
  end

  def show
    if logged_in?
      @user = User.find_by_id(session[:user_id])
    else
      redirect_to root_path
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if params[:user][:password] == params[:user][:password_confirmation] && @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash.notice = "Passwords must match"
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :nausea, :happiness, :tickets, :height, :admin)
  end

  def logged_in?
    session.include? :user_id
  end
end
