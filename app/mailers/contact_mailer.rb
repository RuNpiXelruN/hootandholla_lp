class ContactMailer < ActionMailer::Base
  default to: 'justindavidson23@gmail.com'
  
  
  def contact_email(contact)
   @contact = contact
    
    mail(from: @contact.email, subject: 'Contact Form Message').deliver
  end
end