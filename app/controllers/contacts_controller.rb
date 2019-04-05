class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to request.referer, flash: { success: 'Thank you for contacting us. Company person will contact you soon.' }
    else
      redirect_to request.referer, flash: { notice: 'It seems you have already submitted contact info with same email or contact number.' }
    end
  end

  private

    def contact_params
      params.require(:contact).permit!
    end

end
