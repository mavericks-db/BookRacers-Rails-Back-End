class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(user_params)

    if user.save
      token = issue_token(user)
      render json: { user: UserSerializer.new(user), jwt: token }
    elsif user.errors.messages
      render json: { error: user.errors.messages }
    else
      render json: { error: 'User could not be created. Please try again.' }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :admin)
  end
end
