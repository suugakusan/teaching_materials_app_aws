class Post < ApplicationRecord
  mount_uploader :file, FileUploader
  belongs_to :user
  
  has_many :favorites, dependent: :destroy
  has_many :favoriteds, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
  validates :title, presence: true, length: { maximum: 255 }
  validates :file, presence: true
  validates :subject_id, presence: true
 
 
  def self.search(keyword1, keyword2, keyword3, keyword4, keyword )
    where(schooltype: keyword1).where(grade: keyword2).where(subject_id: keyword3).where(schoolbook: keyword4).where(["title like? OR content like?", "%#{keyword}%", "%#{keyword}%"])
  end
  
end
