RSpec.describe Contact, type: :model do
  describe "バリデーション" do
    subject { contact.valid? }
    context "データが条件を満たすとき" do
      let(:contact) { build(:contact) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
  end
end