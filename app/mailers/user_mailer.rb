class UserMailer < ApplicationMailer

  # Тема письма может быть указана в файле I18n config/locales/en.yml
  # следующим образом:
  #
  #   en.user_mailer.user_tour.subject
  #

  def user_tour(user)
    @user = user
    mail to: user.email, subject: "Запись на экскурсию"
  end

    # def user_tour
    #   @greeting = "Hi"
    #
    #   mail to: "to@example.org"
    # end
end
