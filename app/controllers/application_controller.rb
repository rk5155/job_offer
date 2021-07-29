class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  # ログイン後に遷移するページ
  def after_sign_in_path_for(resource)
    mypage_path(resource)
  end
end
