class ShedulesController < ApplicationController
  # def apply
  #   @tour = Tour.new
  #   @tours = Tour.pluck(:title, :id)
  # end

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
    @shedule = Shedule.new(tour_params)
    #
    # @tour = Tour.new
    # @tours = Tour.pluck(:title, :id)

    if @shedule.save
      redirect_to @shedule
    else
      render 'new'
    end
  end

  def update
    @shedule = Shedule.find(params[:id])

    if @shedule.update(tour_params)
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
end
