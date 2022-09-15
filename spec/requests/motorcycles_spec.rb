require 'rails_helper'

RSpec.describe "Motorcycles", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/motorcycles/index"
      expect(response).to have_http_status(:success)
    end
  end

end
