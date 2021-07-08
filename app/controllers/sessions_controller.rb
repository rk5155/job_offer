class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    # email で検索したユーザーが存在するかつ、入力したパスワードが登録されている暗号化されたパスワード（password_dijest）と一致したとき
    if user && user.authenticate(params[:session][:password])
      # SessionsHelper のメソッド
      log_in user

      redirect_to user
    else
      # エラーメッセージを作成する
      render 'new'
      flash.now[:danger] = 'Invalid email/password combination'
      puts "ログイン失敗"
    end
  end

  def destroy
    # SessionsHelper のメソッド
    log_out
    flash[:success] = "ログアウトしました"
    redirect_to root_url
  end
end
