class EmailsController < ApplicationController
  def contact
    raise Error if contact_params.any? { |k, v| v.blank? }
    AdminMailer.contact_email(contact_params).deliver_now
    render json: { error: false, message: "Thank you for contacting us! We'll get back to you as soon as possible." }
  rescue
    render json: { error: true, message: "We're sorry, but there was a problem. Please make sure you fill in each field and try again." }
  end

  private
  def contact_params
    params.require(:contact).permit(
      :name, :email, :phone,
      :how, :what
    )
  end
end
