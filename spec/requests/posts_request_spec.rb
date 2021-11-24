require 'rails_helper'

RSpec.describe "Posts", type: :request do
  before do
    post login_path, params: { session: {
    email: user.email,
    password: user.password,
     } }
  end
  let(:user) { create(:user) }
  let(:user_id) { user.id }
  describe "GET #new" do
    subject { get(new_post_path) }
    it "リクエストが成功する" do
      subject
      expect(response).to have_http_status(:ok)
    end
  end
  
  describe "GET #show" do
    subject { get(post_path(post_id)) }
    context "投稿が存在するとき" do
      let!(:new_post) { create(:post, user: user)}
      let(:post_id) { new_post.id }
      
      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(:ok)
      end
      
      it "投稿したuserのname が表示されている" do
        subject
        expect(response.body).to include new_post.user.name
      end
      
      it "投稿した内容が表示されている" do
        subject
        expect(response.body).to include new_post.content
      end
    end
  end
  describe "POST #create" do
    subject { post(posts_path, params: params) }
    context "パラメータが正常なとき" do
      let(:new_post) { create(:post, user: user)}
      let(:params) { { post: attributes_for(:post) } }

      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(302)
      end

      it "投稿が保存される" do
        expect { subject }.to change { Post.count }.by(1)
      end

      it "トップページにリダイレクトされる" do
        subject
        expect(response).to redirect_to root_url
      end
    end

    context "パラメータが異常なとき" do
      let!(:new_post) { create(:post, user: user)}
      let(:params) { { post: attributes_for(:post, :invalids) } }

      it "リクエストが失敗する" do
        subject
        expect(response).to have_http_status(200)
      end

      it "投稿が保存されない" do
        expect { subject }.not_to change(Post, :count)
      end

      it "投稿画面ページがレンダリングされる" do
        subject
        expect(response.body).to include "投稿画面"
      end
    end
  end
  
  describe 'DELETE #destroy' do
    subject { delete(post_path(post_id)) }
    let!(:new_post)  { create(:post, user: user)}
    let(:post_id) { new_post.id }

    context 'パラメータが正常な場合' do
      it 'リクエストが成功する' do
        subject
        expect(response).to have_http_status(302)
      end

      it '投稿が削除される' do
        expect { subject }.to change(Post, :count).by(-1)
      end

      it '投稿一覧にリダイレクトすること' do
        subject
        expect(response).to redirect_to root_url
      end
    end
  end
  
  describe "GET #edit" do
    subject { get(edit_post_path(post_id)) }
    context "投稿が存在するとき" do
      let!(:new_post)  { create(:post, user: user)}
      let(:post_id) { new_post.id }

      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(200)
      end

      it "title が表示されている" do
        subject
        expect(response.body).to include new_post.title
      end
    end
    
    context ":idに対応する投稿が存在しないとき" do
      let!(:new_post)  { create(:post, user: user)}
      let(:post_id) { 100 }
      it "トップページにリダイレクトする"  do
        subject
        expect(response).to redirect_to root_url
      end
    end
  end
  
  describe 'PATCH #update' do
    subject { patch(post_path(post_id), params: params) }

    context 'パラメータが正常な場合' do
      let!(:new_post)  { create(:post, user: user)}
      let(:post_id) { new_post.id }
      let(:params) { { post: attributes_for(:post) } }

      it 'リクエストが成功する' do
        subject
        expect(response).to have_http_status(302)
      end

      it 'title が更新される' do
        origin_title = new_post.title
        new_post_title = params[:post][:title]
        expect { subject }.to change { new_post.reload.title }.from(origin_title).to(new_post_title)
      end
      it 'content が更新される' do
        origin_content = new_post.content
        new_post_content = params[:post][:content]
        expect { subject }.to change { new_post.reload.content }.from(origin_content).to(new_post_content)
      end

      it 'トップページにリダイレクトされる' do
        subject
        expect(response).to redirect_to root_url
      end
    end
  end
end