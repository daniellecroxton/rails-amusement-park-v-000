class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find_by_id(params[:id])
    @ride = Ride.new
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
      redirect_to attraction_path(@attraction)
  end

  def edit
    @attraction = Attraction.find_by_id(params[:id])
  end

  def update
    @attraction = Attraction.find_by_id(params[:id])
    @attraction.update(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :password, :nausea_rating, :happiness_rating, :tickets, :min_height)
  end
end
