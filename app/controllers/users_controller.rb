class UsersController < ApplicationController
    def index
        
    end
    
    def show
        @user = User.find(1)
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
        params.require(:user).permit(:name, :email, :password,
                                     :password_confirmation)
    end
end

