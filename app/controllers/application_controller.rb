class ApplicationController < ActionController::API
  def issue_token(user)
    JWT.encode({ user_id: user.id }, 'secret', 'HS256')
  end

  def decoded_token
    JWT.decode(token, 'secret', true, { algorithm: 'HS256' })
  rescue StandardError
    [{ error: 'Invalid Token' }]
  end

  def token
    request.headers['Authorization']
  end

  def user_id
    decoded_token.first['user_id']
  end

  def current_user
    User.find_by(id: user_id)
  end

  def logged_in
    render json: { error: 'You are not logged in' }, status: :forbidden unless !!current_user
  end
end
