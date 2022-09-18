class Api::V1::UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: }, status: :ok
    else
      render json: { error: 'Failed to create user' }, status: :unprocessible_entity
    end
  end

  def login
    @user = User.find_by(email: user_params[:email])

    if @user&.authenticate(user_params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: }, status: :ok
    else
      render json: { error: 'Invalid email or password' }, status: :unprocessible_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :admin, :email, :password)
  end
end
