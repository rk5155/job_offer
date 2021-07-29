class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
    
  end

  def applies
  end
end
