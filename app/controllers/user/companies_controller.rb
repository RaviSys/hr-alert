class User::CompaniesController < ApplicationController

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

  private
    
    def company_params
      params.require(:company).permit!
    end

    def set_company
      @company = Company.find(params[:id])
    end

end
