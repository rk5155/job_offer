class UserDevisesController < ApplicationController
    def show
        @user_devise = UserDevise.find(params[:id])
        @jobs = Apply.where(user_id: current_user_devise.id)

        @current_user_count = Resume.where(user_devise_id: current_user_devise.id).length
    end
end
