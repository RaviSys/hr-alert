class Admin::CompaniesController < AdminController 

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def show; end
  def edit; end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to admin_company_path(@company), flash: { success: 'Company has been created successfully' }
    else
      render :new
    end
  end

  def update
    if @company.update(company_params)
      redirect_to admin_company_path(@company), flash: { success: 'Company has been updated successfully' }
    else
      render :edit
    end
  end

  def destroy
    @company.destroy
    redirect_to admin_companies_path, flash: { success: 'Company has been deleted successfully' }
  end

  private

    def set_comapny
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit!
    end

end 