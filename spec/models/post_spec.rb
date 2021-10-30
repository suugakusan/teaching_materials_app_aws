RSpec.describe Post, type: :model do
  describe "バリデーション" do
    subject { post.valid? }
    context "データが条件を満たすとき" do
      let(:post) { build(:post) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "title が空のとき" do
      let(:post) { build(:post, title: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(post.errors.messages[:title]).to include "を入力してください"
      end
    end
    context "title が21文字以上のとき" do
      let(:post) { build(:post, title: "a" * 21) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(post.errors.messages[:title]).to include "は20文字以内で入力してください"
      end
    end
    context "title が20文字のとき" do
      let(:post) { build(:post, title: "a" * 20) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "title が1文字のとき" do
      let(:post) { build(:post, title: "a" ) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
  end
end