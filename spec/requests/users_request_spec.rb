require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET #new" do
    subject { get(signup_path) }
    it "リクエストが成功する" do
      subject
      expect(response).to have_http_status(:ok)
    end
  end
end