class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    # if logged_in?
      @attraction = Attraction.find_by_id(params[:id])
      @user = User.find_by_id(session[:user_id])
    # else
    #   redirect_to root_path
    # end
  end
end
