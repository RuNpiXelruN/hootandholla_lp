class ContactMailer < ActionMailer::Base
  default to: 'justindavidson23@gmail.com'
  
  def contact_email(name, phone, email, event_type, body)
    @name = name
    @phone = phone
    @email = email
    @event = event_type
    @body = body
    
    mail(from: email, subject: 'Contact Form Message')
  end
end