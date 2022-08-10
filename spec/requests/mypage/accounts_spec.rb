require 'rails_helper'

RSpec.describe "Mypage::Accounts", type: :request do
  describe "GET /edit" do
    it "returns http success" do
      get "/mypage/accounts/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/mypage/accounts/update"
      expect(response).to have_http_status(:success)
    end
  end

end
