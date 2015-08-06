class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      name = params[:contact][:name]
      phone = params[:contact][:phone]
      email = params[:contact][:email]
      event = params[:contact][:event_type]
      body = params[:contact][:comments]
      
      ContactMailer.contact_email(name, phone, email, event, body).deliver
      flash[:success] = 'Message Sent.'
      redirect_to new_contact_path
    else
      flash[:danger] = 'Error occurred, messgage not sent.'
      redirect_to new_contact_path
    end
  end
end

private
def contact_params
  params.require(:contact).permit(:name, :phone, :email, :event_type, :comments)
end