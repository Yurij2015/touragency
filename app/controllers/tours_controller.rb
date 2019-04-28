class ToursController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]


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

  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy

    redirect_to tours_path
  end

  private

  def tour_params
    params.require(:tour).permit(:title, :description)
  end


  # Предфильтры

  # Подтверждает вход пользователя
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Пожалуйста войдите в систему."
      redirect_to login_url
    end
  end

end
