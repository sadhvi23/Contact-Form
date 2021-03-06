class ContactsController < ApplicationController
  protect_from_forgery

  # Render contact form
  def new
    @contact = Contact.new
  end

  # Show a contact
  def show
    @contact = Contact.find(params[:id])
  end

  # Create contacts in db taking those values from form
  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: I18n.t('contact.created') }
      else
        format.html { redirect_to root_path, alert: I18n.t('contact.not_created') }
      end
    end
  end

  private

  # Only allow whitelisted parameters
  def contact_params
    params.permit('first_name', 'last_name', 'email', 'phone_number', 'message', 'locale')
  end
end
