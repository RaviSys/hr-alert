class User::ContactsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_contact, except: [:index]

  def index
    @company = current_user.company
    @contacts = current_user.company.contacts
  end

  def show;end

  def send_email_to_contactee
    @email_content = @contact.email_contents.create(email_params)
    ContactNotificationMailer.response_to_contactee(@email_content).deliver_now
    redirect_to user_contact_path(@contact), flash: { success: 'Email has been sent successfully' }
  end

  private

    def email_params
      params.require(:email_content).permit!
    end

    def set_contact
      @contact = Contact.find(params[:id])
    end
    
end
