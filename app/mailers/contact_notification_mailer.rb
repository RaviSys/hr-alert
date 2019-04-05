class ContactNotificationMailer < ApplicationMailer

  def send_contact_notification(contact)
    @contact = contact
    mail(to: @contact.email, subject: 'Thank you for contacting company')
  end

end
