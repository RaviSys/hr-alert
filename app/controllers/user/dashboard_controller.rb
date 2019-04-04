class User::DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = current_user
    @company  = current_user.company if current_user.company.present? 
  end

end
