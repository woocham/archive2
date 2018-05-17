class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    Contact.create(name: params[:contact][:name],email: params[:contact][:email],content: params[:contact][:content])
    
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path
    else
      render 'contacts/new'
    end
    
  end
  
  private
  def contact_params
    params.require(:contact).permit(:name,:email,:content)
  end
end
