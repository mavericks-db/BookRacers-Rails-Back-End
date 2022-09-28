require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :request do
  describe 'GET #index' do
    context 'User is not authenticated' do
      before :each do
        get api_v1_users_path
      end

      it 'returns http success' do
        expect(response).to have_http_status(:ok)
      end

      it 'assigns all categories to @categories' do
        expect(assigns(:categories)).to_not eq(Category.all)
      end

      it 'gives an empty array' do
        expect(response.body).to eq "[]"
      end
    end

    context 'User is authenticated' do
      before :each do
        auth_token = signup
        headers = { "ACCEPT" => "application/json", "Authorization" => auth_token }
        get api_v1_users_path, headers: headers
      end

      it 'returns http success' do
        expect(response).to have_http_status(:ok)
      end

      it 'redirects to the home page' do
        expect(current_path).to eq(api_v1_users_path)
      end

      it 'assigns all categories to @categories' do
        expect(@categories).to eq(Category.all)
      end
    end
  end
end
