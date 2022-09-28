require 'json'

def login
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

# def current_path
#   request.env['PATH_INFO']
# end
