class TourOrdersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :admin_user, only: [:edit, :update, :destroy]



  def index
    @tour_orders = TourOrder.all
  end

  def show
    @tour_order = TourOrder.find(params[:id])
  end

  def new
    t@tour_order = TourOrder.new
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

  # # Отправляет электронное письмо о записи на экскурсию
  # def send_tourorder_email
  #   UserMailer.user_tour(@tour_order).deliver_now
  # end

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

    # redirect_to tour_order_path
    redirect_to @tour_order
  end

  private

  def tour_order_params
    params.require(:tour_order).permit(:customer, :cellphone, :email, :custdatetour, :tour_id)
  end


  # Предфильтры

  # Подтверждает вход пользователя
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Пожалуйста войдите в систему."
      redirect_to login_url
    end
  end

  # Подтверждает администратора.
  def admin_user
    flash[:danger] = "У Вас нет прав на действия со списком записей на экскурсию"
    redirect_to(tour_orders_url) unless current_user.admin?
  end

end
