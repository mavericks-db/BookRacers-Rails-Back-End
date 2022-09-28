def login
  headers = { 'ACCEPT' => 'application/json' }
  post api_v1_signup_path, params: {
    user: {
      name: 'John Doe',
      username: 'johndoe',
      email: 'johndoe@mail.com',
      password: '123456',
      admin: false
    }
  }, headers: headers
  follow_redirect!
end
