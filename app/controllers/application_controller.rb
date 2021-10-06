class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  # ログイン後に遷移するページ
  def after_sign_in_path_for(resource)
    mypage_companies_path(resource)
  end

  def after_sign_in_path_for(resource)
    case resource

    when Company
      mypage_companies_path(resource)

    when UserDevise
      mypage_user_devises_path(resource)
    end
  end


  # ログイン中のユーザー以外のユーザーが、アクセスしたとき、root にリダイレクト
  def user_control(id)
    if id != current_user_devise.id
      redirect_to root_path
    end
  end






  # deviseコントローラーにストロングパラメータを追加する          
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :furigane])


    # アカウント編集の時にnameとprofileのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :furigane, :birthday, :sex, :profession, :career, :number, :address, :pr,
                                                              :image, :location, :contents, :established, :number, :site])
  end
end
