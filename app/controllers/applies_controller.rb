class AppliesController < ApplicationController

  def new
      @apply = Apply.new
      @id = params[:id]
      @name = params[:name]
      @title = params[:title]
      @job_url = params[:job_url]
  end

  def create
      # @apply = apply.new(params[:apply])    # 実装は終わっていないことに注意!
      @apply = Apply.new(apply_params)
      
      if @apply.save
          ContactMailer.applied(@apply).deliver
          render 'completion'
      else
          render 'new'
      end
  end

  def completion
      
  end

  

  private

  def apply_params
      params.require(:apply).permit(:name, :number, :email, :company_id, :user_id, :job_title, :job_url)
  end
end
