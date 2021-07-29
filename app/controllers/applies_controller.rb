class AppliesController < ApplicationController

  def new
      @apply = Apply.new
  end

  def create
      # @apply = apply.new(params[:apply])    # 実装は終わっていないことに注意!
      @apply = Apply.new(apply_params)
      
      if @apply.save
          
          flash[:success] = "Welcome!!!!!!!!!!!"
          
      else
          render 'new'
      end
  end

  

  private

  def apply_params
      params.require(:apply).permit(:name, :number, :email)
  end
end
