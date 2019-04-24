class TourOrdersController < ApplicationController
  def index
    @tour_orders = TourOrder.all
  end

  def show
    @tour_order = TourOrder.find(params[:id])
  end

  def new
    @tour_order = TourOrder.new
  end

  def edit
    @tour_order = TourOrder.find(params[:id])
  end

  def create
    @tour_order = TourOrder.new(tour_order_params)
    if @tour_order.save
      redirect_to @tour_order
    else
      render 'new'
    end
  end

  def update
    @tour_order = TourOrder.find(params[:id])

    if @tour_order.update(tour_order_params)
      redirect_to @tour_order
    else
      render 'edit'
    end
  end

  def destroy
    @tour_order = TourOrder.find(params[:id])
    @tour_order.destroy

    redirect_to tour_order_path
  end

  private

  def tour_order_params
    params.require(:tour_order).permit(:customer, :cellphone, :email, :custdatetour, :tour_id)
  end
end
