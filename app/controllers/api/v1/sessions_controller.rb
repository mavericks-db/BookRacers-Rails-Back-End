class Api::V1::SessionsController < ApplicationController
  def login
    @user = User.find_by(email: user_params[:email])

    if @user&.authenticate(user_params[:password])
      token = encode_token({ user_id: @user.id })
      session[:user_id] = @user.id
      render json: { user: {
        id: @user.id,
        name: @user.name,
        email: @user.email,
        admin: @user.admin
      }, token: }, status: :ok
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end

  def logged_in?
    if session[:user_id]
      render json: { logged_in: true, user: User.find(session[:user_id]) }
    else
      render json: { logged_in: false }
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if
    session[:user_id]
  end

  def destroy
    session.clear
    render json: { message: 'Successfully logged out' }, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:name, :admin, :email, :password)
  end
end
