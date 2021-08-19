class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
    @job_list = Scraping.where(company_id: @company.id)
    @total_pv = 0

    @job_list.each do |data|
      if data.pv
        @total_pv += data.pv.to_i
      end
    end
  end

  def applies
  end
end
