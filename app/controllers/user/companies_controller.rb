class User::CompaniesController < ApplicationController
  before_action :set_company, except: [:new, :create]
  before_action :authenticate_user!

  def new
    @company = Company.new
  end

  def edit; end

  def show; end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to user_dashboard_path, flash: { success: 'Company has been created successfully' }
    else
      render :new
    end
  end

  def edit_address_info;end

  def edit_social_info;end

  def update
    if @company.update(company_params)
      redirect_to user_company_path(@company), flash: { success: 'Company has been created successfully' }
    else
      render :edit
    end
  end  

  def destroy
    @company.destroy
    redirect_to user_dashboard_path, flash: { success: 'Company has been destroyed successfully.' }
  end

  def update_address_info
    if @company.update(address_params)
      redirect_to user_dashboard_path, flash: { success: 'Company Address has been updated successfully.' }
    end
  end

  def update_social_info
    if @company.update(social_params)
      redirect_to user_dashboard_path, flash: { success: 'Company Social Links has been updated successfully.' }
    end
  end

  private
    
    def company_params
      params.require(:company).permit!
    end

    def address_params
      params.require(:company).permit(:address, :city, :state, :country, :latitude, :longitude)
    end

    def social_params
      params.require(:company).permit(:facebook_url, :youtube_url, :google_plus_url, :twitter_url, :linkedin_url)
    end

    def set_company
      @company = Company.find(params[:id])
    end

end
