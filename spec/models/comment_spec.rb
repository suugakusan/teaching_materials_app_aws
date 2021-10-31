RSpec.describe Comment, type: :model do
  describe "バリデーション" do
    subject { comment.valid? }
    context "データが条件を満たすとき" do
      let(:comment) { build(:comment) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "comment_content が空のとき" do
      let(:comment) { build(:comment, comment_content: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(comment.errors.messages[:comment_content]).to include "を入力してください"
      end
    end
    context "comment_content が256文字以上のとき" do
      let(:comment) { build(:comment, comment_content: "a" * 256) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(comment.errors.messages[:comment_content]).to include "は255文字以内で入力してください"
      end
    end
    context "comment_content が255文字のとき" do
      let(:comment) { build(:comment, comment_content: "a" * 255) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "comment_content が1文字のとき" do
      let(:comment) { build(:comment, comment_content: "a" ) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
  end
end