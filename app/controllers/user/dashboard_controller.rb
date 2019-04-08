class User::DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = current_user
    @company  = current_user.company if current_user.company.present? 
    @job_posts = @company.job_posts.order(created_at: :desc).limit(10) if @company.present?
  end

end
