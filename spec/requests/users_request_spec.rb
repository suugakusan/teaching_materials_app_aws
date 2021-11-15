require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET #new" do
    subject { get(signup_path) }
    it "リクエストが成功する" do
      subject
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET #show" do
    subject { get(user_path(user_id)) }
    context "ユーザーが存在するとき" do
      before do
         post login_path, params: { session: {
        email: user.email,
        password: user.password,
         } }
      end
      
      let(:user) { create(:user) }
      let(:user_id) { user.id }
      
      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(:ok)
      end
      
      it "name が表示されている" do
        subject
        expect(response.body).to include user.name
      end
    end
  end
  
  describe "POST #create" do
    subject { post(users_path, params: params) }
    context "パラメータが正常なとき" do
      let(:params) { { user: attributes_for(:user) } }

      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(302)
      end

      it "ユーザーが保存される" do
        expect { subject }.to change { User.count }.by(1)
      end

      it "詳細ページにリダイレクトされる" do
        subject
        expect(response).to redirect_to User.last
      end
    end

    context "パラメータが異常なとき" do
      let(:params) { { user: attributes_for(:user, :invalid) } }

      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(200)
      end

      it "ユーザーが保存されない" do
        expect { subject }.not_to change(User, :count)
      end

      it "新規投稿ページがレンダリングされる" do
        subject
        expect(response.body).to include "新規登録"
      end
    end
  end
  
  describe "GET #edit" do
    subject { get(edit_user_path(user_id)) }
    context "ユーザーが存在するとき" do
      before do
         post login_path, params: { session: {
        email: user.email,
        password: user.password,
         } }
      end
      let(:user) { create(:user) }
      let(:user_id) { user.id }

      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(200)
      end

      it "name が表示されている" do
        subject
        expect(response.body).to include user.name
      end
    end
    
    context ":idに対応するユーザーが存在しないとき" do
      before do
         post login_path, params: { session: {
        email: user.email,
        password: user.password,
         } }
      end
      let(:user) { create(:user) }
      let(:user_id) { 1 }

      it "エラーが発生する" do
        expect { subject }.to raise_error ActiveRecord::RecordNotFound
      end
    end
  end
  
  describe 'PATCH #update' do
    subject { patch(user_path(user.id), params: params) }
    let(:user) { create(:user) }

    context 'パラメータが正常な場合' do
      let(:params) { { user: attributes_for(:user) } }

      it 'リクエストが成功する' do
        subject
        expect(response).to have_http_status(302)
      end

      it 'name が更新される' do
        origin_name = user.name
        new_name = params[:user][:name]
        expect { subject }.to change { user.reload.name }.from(origin_name).to(new_name)
      end
       it 'email が更新される' do
        origin_email = user.email
        new_email = params[:user][:email]
        expect { subject }.to change { user.reload.email }.from(origin_email).to(new_email)
      end

      it 'トップページにリダイレクトされる' do
        subject
        expect(response).to redirect_to root_url
      end
    end
    
    context 'user のパラメータが異常なとき' do
      let(:params) { { user: attributes_for(:user, :invalid) } }

      it 'エラーが発生する' do
        subject
        expect(response).to have_http_status(200)
      end

      it 'name が更新されない' do
        expect { subject }.not_to change(user.reload, :name)
      end

      it '編集ページがレンダリングされる' do
        subject
        expect(response.body).to include '編集'
      end
    end
  end
end