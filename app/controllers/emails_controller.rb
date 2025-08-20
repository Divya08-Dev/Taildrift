class EmailsController < ApplicationController
  def send_welcome
    user = User.find(params[:id]) # or current_user
    UserMailer.welcome_email(user).deliver_now
    redirect_to root_path, notice: "Email sent!"
  end
end
  