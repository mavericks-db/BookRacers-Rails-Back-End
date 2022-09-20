class Api::V1::UsersController < ApplicationController
  def create
    @user = User.create!(user_params)
    if @user.valid?
      token = encode_token({ user_id: @user.id })
      render json: { user: {
        id: @user.id,
        name: @user.name,
        email: @user.email,
        admin: @user.admin
      }, token: }, status: :ok
    else
      render json: { error: @user.errors.messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :admin, :email, :password)
  end
end
