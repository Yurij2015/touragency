class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def new
    @tour = Tour.new
  end

  def edit
    @tour = Tour.find(params[:id])
  end

  def create
    @tour = Tour.new(tour_params)

    if @tour.save
      redirect_to @tour
    else
      render 'new'
    end
  end

  def update
    @tour = Tour.find(params[:id])

    if @tour.update(tour_params)
      redirect_to @tour
    else
      render 'edit'
    end
  end

  private

  def tour_params
    params.require(:tour).permit(:title, :description)
  end
end
