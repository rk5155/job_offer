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
end
