class ApplicationController < ActionController::API
  respond_to :json
  def encode_token(payload)
    JWT.encode(payload, 'secret')
  end

  def decode_token
    # Authorization: Bearer <token>
    auth_header = request.headers['Authorization']
    return unless auth_header

    token = auth_header.split[1]
    begin
      JWT.decode(token, 'secret', true, { algorithm: 'HS256' })
    rescue JWT::DecodeError
      nil
    end
  end
end
