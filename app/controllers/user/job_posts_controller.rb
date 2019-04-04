class User::JobPostsController < ApplicationController
  before_action :authenticate_user!
  before_action :current_company

  def index
    @job_posts = @company.job_posts
  end

  def new
    @job_post = JobPost.new
  end

  def edit;end
  def show;end

  def create
  end

  private

    def job_post_params
      params.require(:job_post).permit!
    end

    def current_company
      @company = current_user.company
    end

    def set_job_post
      @job_post = JobPost.find(params[:id])
    end

end
