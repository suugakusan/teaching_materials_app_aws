require 'rails_helper'

RSpec.describe "Comments", type: :request do
  before do
    post login_path, params: { session: {
    email: user.email,
    password: user.password,
     } }
  end
  let(:user) { create(:user) }
  let(:user_id) { user.id }
  
  describe "POST #create" do
    subject { post(post_comments_path(post_id), params: params) }
    context "パラメータが正常なとき" do
      let(:comment) { create(:comment, user: user) }
      let!(:new_post)  { create(:post, user: user)}
      let(:post_id) { new_post.id}
      let(:params) { { comment: attributes_for(:comment) } }

      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(302)
      end
    end
  end
end