RSpec.describe Comment, type: :model do
  describe "バリデーション" do
    subject { comment.valid? }
    context "データが条件を満たすとき" do
      let(:comment) { build(:comment) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
  end
end