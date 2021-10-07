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
                                                              :image, :location, :contents, :established, :number, :site, :name2, :furigane2, :month, :day,
                                                               :age, :postal, :address2, :address3, :educational_yearfrom1, :educational_yearto1, :educational_monthfrom1,
                                                                :educational_monthto1, :school1, :educational_yearfrom2, :educational_yearto2, :educational_monthfrom2, :educational_monthto2, :school2, :educational_yearfrom3, :educational_yearto3, :educational_monthfrom3, :educational_monthto3, :school3, :educational_yearfrom4, :educational_yearto4,
                                                                 :educational_monthfrom4, :educational_monthto4, :school4, :educational_yearfrom5, :educational_yearto5, :educational_monthfrom5, :educational_monthto5, :school5, :career_yearfrom1, :career_yearto1, :career_monthfrom1, :career_monthto1, :company1, :career_yearfrom2, :career_yearto2, :career_monthfrom2, :career_monthto2, :company2,
                                                                  :career_yearfrom3, :career_yearto3, :career_monthfrom3, :career_monthto3, :company3, :career_yearfrom4, :career_yearto4, :career_monthfrom4, :career_monthto4, :company4, :career_yearfrom5, :career_yearto5, :career_monthfrom5, :career_monthto5, :company5, :career_yearfrom6, :career_yearto6, :career_monthfrom6, :career_monthto6, :company6, :image, :release])
  end
end
