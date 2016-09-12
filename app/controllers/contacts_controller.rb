class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    respond_to do |format|
      format.html { render :layout => false }
      format.js { render :action => 'new' }
    end
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    respond_to do |format|
    if @contact.save
      @contact.deliver
      format.html { redirect_to places_path, :notice => "Successfully created place" }
      format.js
    else
      flash.message[:error] = "You're message could not be sent."
      format.html { render :action => 'new' }
      format.js { render :action => 'new' }
      end
    end

  end
end
