# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/user_tour
  def user_tour
    user = User.last
    tour_order = TourOrder.last

    UserMailer.user_tour(user, tour_order)
    # UserMailer.user_tour(tour_order)
  end
end
