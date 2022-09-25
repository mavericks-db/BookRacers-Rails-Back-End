class Api::V1::SessionsController < ApplicationController
  before_action :logged_in, only: [:show]

  def create
    user = User.find_by_username(user_params[:username])
    if user
      token = issue_token(user)
      render json: { user: UserSerializer.new(user), jwt: token }
    else
      render json: { error: 'Incorrect username or password.' }, status: :unauthorized
    end
  end

  def show
    render json: current_user, status: :ok
  end

  def logout
    render json: { message: 'Successfully logged out.' }, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
