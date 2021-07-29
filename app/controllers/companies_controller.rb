class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
    @applys = @company.applys.count
  end
end
