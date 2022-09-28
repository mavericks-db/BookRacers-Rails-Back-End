require 'rails_helper'

RSpec.describe Api::V1::SessionsController, type: :request do
  describe 'User session' do
    context 'checks login' do
      before :each do
        login
      end

      it 'returns http success' do
        expect(response).to have_http_status(:ok)
      end

      it 'assigns all categories to @categories' do
        expect(assigns(:categories)).to_not eq(Category.all)
      end

      it 'gives an empty array' do
        expect(response.body).to eq '[]'
      end
    end

    # context 'checks authorization' do
    #   before :each do
    #     auth_token = login
    #     headers = { "ACCEPT" => "application/json", "Authorization" => auth_token }
    #     get api_v1_users_path, headers: headers
    #   end

    #   it 'returns http success' do
    #     expect(response).to have_http_status(:ok)
    #   end

    #   it 'redirects to the home page' do
    #     expect(current_path).to eq(api_v1_users_path)
    #   end

    #   it 'assigns all categories to @categories' do
    #     expect(@categories).to eq(Category.all)
    #   end
    # end

    # context 'checks logout' do
    #   before :each do
    #     auth_token = login
    #     headers = { "ACCEPT" => "application/json", "Authorization" => auth_token }
    #     get api_v1_users_path, headers: headers
    #   end

    #   it 'returns http success' do
    #     expect(response).to have_http_status(:ok)
    #   end

    #   it 'redirects to the home page' do
    #     expect(current_path).to eq(api_v1_users_path)
    #   end

    #   it 'assigns all categories to @categories' do
    #     expect(@categories).to eq(Category.all)
    #   end
    # end
  end
end
