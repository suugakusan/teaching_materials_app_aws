require 'rails_helper'

RSpec.describe "Posts", type: :request do
  before do
    post login_path, params: { session: {
    email: user.email,
    password: user.password,
    } }
  end
  let(:user) { create(:user) }
  
  describe "GET #new" do
    subject { get(new_post_path) }
    it "リクエストが成功する" do
      subject
      expect(response).to have_http_status(:ok)
    end
  end
end