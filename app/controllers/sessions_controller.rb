class SessionsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      login_user(user)

      return_to = session.delete(:return_to)

      redirect_to return_to || root_path
    else
      render :new
    end
  end

  private

  def login_user(user)
    @current_user = user
    session[:user_id] = user.id
  end

end
