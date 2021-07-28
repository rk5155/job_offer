class UserDevisesController < ApplicationController
    def show
        @user_devise = UserDevise.find(params[:id])
    end
end
