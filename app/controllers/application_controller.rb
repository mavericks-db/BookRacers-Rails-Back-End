class ApplicationController < ActionController::API
  helper_method :current_user
  helper_method :logged_in?

  def jwt_key
    Rails.application.credentials.jwt_key
  end

  def encode_token(payload)
    JWT.encode(payload, jwt_key, 'HS256')
  end

  def decode_token
    # Authorization: Bearer <token>
    auth_header = request.headers['Authorization']
    return unless auth_header

    token = auth_header.chars[1]
    begin
      JWT.decode(token, jwt_key, true, { algorithm: 'HS256' })
    rescue JWT::DecodeError
      nil
    end
  end

  def authorized_user
    decoded_token = decode_token
    return unless decoded_token

    user_id = decoded_token.first['user_id']
    @user = User.find_by(id: user_id)
  end

  def authorize
    render json: { message: 'You have to log in.' }, status: :unauthorized unless authorized_user
  end
end
