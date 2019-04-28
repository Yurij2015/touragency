class ShedulesController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]


  def index
    @shedules = Shedule.all
  end

  def show
    @shedule = Shedule.find(params[:id])
  end

  def new
    @shedule = Shedule.new
  end

  def edit
    @shedule = Shedule.find(params[:id])
  end

  def create
    @shedule = Shedule.new(shedule_params)
    if @shedule.save
      redirect_to @shedule
    else
      render 'new'
    end
  end

  def update
    @shedule = Shedule.find(params[:id])

    if @shedule.update(shedule_params)
      redirect_to @shedule
    else
      render 'edit'
    end
  end

  def destroy
    @shedule = Shedule.find(params[:id])
    @shedule.destroy

    redirect_to shedule_path
  end

  private

  def shedule_params
    params.require(:shedule).permit(:datetimetour, :countplace, :tourcost, :tour_id)
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
