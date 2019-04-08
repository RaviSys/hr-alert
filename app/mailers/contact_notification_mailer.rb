class ContactNotificationMailer < ApplicationMailer

  def send_contact_notification(contact)
    @contact = contact
    mail(to: @contact.email, subject: 'Thank you for contacting company')
  end

  def response_to_contactee(email_content)
    @email_content = email_content
    mail(to: @email_content.receiver, from: @email_content.sender, subject: @email_content.subject)
  end

end
