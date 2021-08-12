class AppliesController < ApplicationController

  def new
      @apply = Apply.new
      @id = params[:id]
      @name = params[:name]
      @title = params[:title]
  end

  def create
      # @apply = apply.new(params[:apply])    # 実装は終わっていないことに注意!
      @apply = Apply.new(apply_params)
      
      if @apply.save
          flash[:success] = "Welcome!!!!!!!!!!!"
          ContactMailer.applied(@apply).deliver
      else
          render 'new'
      end
  end

  

  private

  def apply_params
      params.require(:apply).permit(:name, :number, :email, :company_id)
  end
end
