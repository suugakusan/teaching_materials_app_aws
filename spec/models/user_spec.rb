RSpec.describe User, type: :model do
  describe "バリデーション" do
    subject { user.valid? }
    context "データが条件を満たすとき" do
      let(:user) { build(:user) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "name が空のとき" do
      let(:user) { build(:user, name: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:name]).to include "を入力してください"
      end
    end
    context "name が21文字以上のとき" do
      let(:user) { build(:user, name: "a" * 21) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:name]).to include "は20文字以内で入力してください"
      end
    end
    context "name が20文字のとき" do
      let(:user) { build(:user, name: "a" * 20) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "name が1文字のとき" do
      let(:user) { build(:user, name: "a" ) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "email が空のとき" do
      let(:user) { build(:user, email: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:email]).to include "を入力してください"
      end
    end
    context "email が255文字のとき" do
      let(:user) { build(:user, email: "test1@test1.com"+"a"* 240) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "email が256以上の文字のとき" do
      let(:user) { build(:user, email: "test1@test1.com" * 241) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:email]).to include "は255文字以内で入力してください"
      end
    end
    context "email がすでに存在するとき" do
      before { create(:user, email: "test@example.com") }
      let(:user) { build(:user, email: "test@example.com") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:email]).to include "はすでに存在します"
      end
    end
    context "email に大文字が含まれているとき" do
      let(:user) { create(:user, email: "TEST@example.com") }
      it "小文字化されている" do
        expect(user.email).to eq("test@example.com")
      end
    end
       context "password が空のとき" do
      let(:user) { build(:user, password: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:password]).to include "を入力してください"
      end
    end
    context "password が４文字より少ないとき" do
      let(:password){ Faker::Internet.password(min_length: 3, max_length: 3)}
      let(:user) { build(:user, password: password) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(user.errors.messages[:password]).to include "は4文字以上で入力してください"
      end
    end
  end
end
