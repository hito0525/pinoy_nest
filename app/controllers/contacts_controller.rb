class ContactsController < ApplicationController
  def new
    if params[:back]
    @contact = Contact.new(contact_params)
  else
    @contact = Contact.new
  end
end
  def create
    @contact = Contact.new(contacts_params)
    if @contact.save
    # Contact.create(contacts_params)
    redirect_to new_contact_path,notice:"Successfully Done.Thank you for contacting us"
  else
    render :new
    end
  end

  private
  def contacts_params
    params.require(:contact).permit(:name,:email,:content)
  end
end

