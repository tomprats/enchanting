class AdminMailer < ActionMailer::Base
  default from: ENV["EMAIL_SENDER"]
  layout "mailer"

  def contact_email(params)
    @name = params[:name]
    @email = params[:email]
    @phone = params[:phone]
    @how = params[:how]
    @what = params[:what]

    mail to: ENV["CONTACT_EMAIL"], subject: "Enchanting Message from #{@name}"
  end
end
