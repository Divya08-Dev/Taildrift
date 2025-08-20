class UserMailer < ApplicationMailer
   default from: "divyaa.geitpl@gmail.com"  # must be the verified sender
   layout "mailer"

  def welcome_email(user)
    @user = user
    mail(to: @user.email_address, subject: 'Welcome to My App!')
  end
end
