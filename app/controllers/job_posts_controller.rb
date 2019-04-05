class JobPostsController < ApplicationController

  def index
    @job_posts = JobPost.order(created_at: :desc).page params[:page]
  end

  def show
    @job_post = JobPost.find(params[:id])
  end

end
