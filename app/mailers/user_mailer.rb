class UserMailer < ApplicationMailer

  def user_tour(user, tour_order)
    @user = user
    @tour_order = tour_order
    mail to: user.email, subject: "Запись на экскурсию"
  end
end
