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
    context "content が空のとき" do
      let(:post) { build(:post, content: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(post.errors.messages[:content]).to include "を入力してください"
      end
    end
    context "content が256文字以上のとき" do
      let(:post) { build(:post, content: "a" * 256) }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(post.errors.messages[:content]).to include "は255文字以内で入力してください"
      end
    end
    context "content が255文字のとき" do
      let(:post) { build(:post, content: "a" * 255) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "content が1文字のとき" do
      let(:post) { build(:post, content: "a" ) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
    context "file が空のとき" do
      let(:post) { build(:post, file: "") }
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(post.errors.messages[:file]).to include "を入力してください"
      end
    end
    context "file の拡張子が指定されていないものだったとき" do
      let(:post) { build(:post, file: fileimage) }
      let(:fileimage){ Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/テスト.dotx'))}
      it "エラーが発生する" do
        expect(subject).to eq false
        expect(post.errors.messages[:file]).to include "\"dotx\"ファイルのアップロードは許可されていません。アップロードできるファイルタイプ: jpg, jpeg, gif, png, docx, xlsx, pptx, txt, pdf",+"を入力してください"
      end
    end
  end
end