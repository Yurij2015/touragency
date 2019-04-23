class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def new
  end

  def create
    @tour = Tour.new(tour_params)

    @tour.save
    redirect_to @tour
  end

  private

  def tour_params
    params.require(:tour).permit(:title, :description)
  end
end
