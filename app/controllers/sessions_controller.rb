class SessionsController < ApplicationController

  def new
  end

  def create
    # raise params.inspect
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash.notice = "Username or password invalid"
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
