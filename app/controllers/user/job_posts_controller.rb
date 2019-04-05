class User::JobPostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_job_post, only: [:show, :edit, :publish_job_post, :update]
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

  def update
    if @job_post.update(job_post_params)
      redirect_to user_job_post_path(@job_post), flash: { success: 'Job post has been updated successfully' }
    else
      render :edit 
    end
  end

  def publish_job_post
    @job_post.update(status: 'published')
    redirect_to user_job_post_path(@job_post), flash: { success: 'Job post has been set to published successfully' }
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
