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

def create_motorcycle
  post api_v1_add_motorcycle_path, params: {
    motorcycle: {
      image: 'moto.png',
      category_id: 1,
      rental_price: 20,
      year: 2001,
      brand: 'Suzuki',
      model: 'GSX-R 1000',
      reserved: false,
      picture: 'moto.png'
    }
  }
  response.body
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
