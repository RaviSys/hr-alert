class User::ContactsController < ApplicationController

  before_action :authenticate_user!

  def index
    @company = current_user.company
    @contacts = current_user.company.contacts
  end

  def show
    @contact = Contact.find(params[:id])
  end
    
end
