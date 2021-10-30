class Post < ApplicationRecord
  mount_uploader :file, FileUploader
  belongs_to :user
  
  has_many :favorites, dependent: :destroy
  has_many :favoriteds, through: :favorites, source: :user
  has_many :comments, dependent: :destroy
  
  validates :content, presence: true, length: { maximum: 255 }
  validates :title, presence: true, length: { maximum: 20 }
  validates :file, presence: true
  validates :subject_id, presence: true
 
 
  def self.search(keyword1, keyword2, keyword3, keyword4, keyword )
    if keyword1 == "校種"
     # keyword1 = ["校種", "小学校", "中学校", "高校"]
       keyword1 = Post.schooltypes.keys
    end
    if keyword2 == "学年"
    #  keyword2 = ["学年", "学年共通", "１年", "２年", "３年", "４年", "５年", "６年"]
       keyword2 = Post.grades.keys
    end
    
    if keyword3 == "教科"
    #  keyword3 = ["教科", "国語", "社会", "数学", "理科", "英語", "音楽", "保体", "技家", "美術", "算数", "生活", "家庭", "図画工作"]
       keyword3 = Post.subject_ids.keys
    end
    
    if keyword4 == "教科書"
    #  keyword4 = ["教科書","東京書籍", "三省堂", "教育出版", "光村図書出版", "帝国書院", "山川出版社", "日本文教出版", "自由社", "育鵬社", "清水書院", "大日本図書", "学校図書", "啓林館", "数研出版", "教育芸術社", "開隆堂出版", "大修館書店", "学研教育みらい", "教育図書", "信州教育出版社"]
       keyword4 = Post.schoolbooks.keys
    end
    where(schooltype: keyword1).where(grade: keyword2).where(subject_id: keyword3).where(schoolbook: keyword4).where(["title like? OR content like?", "%#{keyword}%", "%#{keyword}%"])
  end
end
