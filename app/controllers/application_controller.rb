class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user!

  def current_user
    if @current_user.present?
      @current_user
    else
      begin
        @current_user ||= User.find(session[:user_id])
      rescue ActiveRecord::ActiveRecordError
        logout_user
      end
    end
  end

  private

  def authenticate_user!
    unless current_user
      redirect_to login_path, alert: t('application.please_login')
    end
  end

  def logout_user
    @current_user = nil
    session[:user_id] = nil
  end
end
