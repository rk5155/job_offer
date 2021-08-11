class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
    @job_list = Scraping.where(company_id: @company.id)
  end

  def applies
  end
end
