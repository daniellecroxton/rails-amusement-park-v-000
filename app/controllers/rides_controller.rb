class RidesController < ApplicationController
  def new
    @ride = Ride.create(
      :user_id => params[:user_id],
      :attraction_id => params[:attraction_id]
    )
    @attraction = Attraction.find_by_id(params[:attraction_id])
    @message = @ride.take_ride
    flash.notice = @message
    redirect_to user_path(current_user)
  end
end
