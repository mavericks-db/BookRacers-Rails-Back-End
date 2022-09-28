require 'json'

def signup
  post api_v1_signup_path, params: {
    user: {
      name: 'John Doe',
      username: 'johndoe',
      email: 'johndoe@mail.com',
      password: '123456',
      admin: false
    }
  }
  @categories = Category.all
  res = JSON.parse response.body
  res['jwt']
end

def login
  signup
  post api_v1_login_path, params: {
    user: {
      username: 'John Doe'
    }
  }
end

def current_path
  request.env['PATH_INFO']
end
