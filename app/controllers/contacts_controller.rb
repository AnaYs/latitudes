class ContactsController < ApplicationController
  protect_from_forgery except: [:new, :create]

  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    respond_to do |format|
      if @contact.deliver
        format.html { redirect_to root_path, notice: "That better not be spam! No, seriously, I'm looking forward to read you." }
      else
        format.html { redirect_to root_path, warning: "Oops. Something went wrong. Just write me an email, 'kay? hello@anays.com" }
      end
    end
  end
end

