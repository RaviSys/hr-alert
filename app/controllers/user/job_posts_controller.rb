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
    @job_post = @company.job_posts.create(job_post_params)
    if @job_post.save
      redirect_to user_dashboard_path, flash: { success: 'Job post has been created successfully' }
    else
      render :new
    end
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
