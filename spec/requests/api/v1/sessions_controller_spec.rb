require 'rails_helper'

RSpec.describe Api::V1::SessionsController, type: :request do
  describe 'User session' do
    context 'checks login' do
      before :each do
        login
      end

      it 'returns http unauthorized' do
        expect(response).to have_http_status(:unauthorized)
      end
    end

    context 'checks logout' do
      before :each do
        get api_v1_logout_path
      end

      it 'returns http success' do
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
