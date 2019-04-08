class CompaniesController < ApplicationController

  before_action :load_industries
  before_action :load_cities

  def index
    if params[:city].present?
      @companies = Company.where(city: params[:city])
    else
      @companies = Company.all
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  private

    def load_industries
      @industries = Industry.all
    end

    def load_cities
      @cities = Company.pluck(:city).compact.sort.uniq
    end

end
