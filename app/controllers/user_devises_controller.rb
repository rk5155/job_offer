class UserDevisesController < ApplicationController
    def show
        @user_devise = UserDevise.find(params[:id])
        @jobs = Apply.where(user_id: current_user_devise.id)
    end
end
