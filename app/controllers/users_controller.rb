class UsersController < ApplicationController
    def index
        
    end
    
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        # @user = User.new(params[:user])    # 実装は終わっていないことに注意!
        @user = User.new(user_params)
        if @user.save
            # 保存の成功をここで扱う。
            flash[:success] = "Welcome!!!!!!!!!!!"
            redirect_to user_url(@user)
        else
            render 'new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :name2, :email, :password,
                                     :password_confirmation, :furigana, :furigana2,
                                      :year, :month, :day, :sex, :postal_code, :prefectures,
                                      :municipality, :address, :phone_number)
    end
end

