class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.save
      @contact.deliver
      render do |page|
        page.html {}
        page.js {}
      end
    else
      flash.now[:error] = "You're message could not be sent."
      render do |page|
        page.html {}
        page.js {}
      end
    end

  end
end
