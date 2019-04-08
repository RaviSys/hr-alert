class HomeController < ApplicationController
  def index
    @companies = Company.all
    @cities = Company.pluck(:city).compact.sort.uniq
  end
end
