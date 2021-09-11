class Post < ApplicationRecord
  mount_uploader :file, FileUploader
  belongs_to :user
  
  has_many :favorites
  has_many :favoriteds, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
  validates :title, presence: true, length: { maximum: 255 }
  validates :file, presence: true, length: { maximum: 255 }
  validates :subject_id, presence: true, length: { maximum: 1 }
  
  def self.search(keyword)
    where(["title like? OR content like?", "%#{keyword}%", "%#{keyword}%"])
  end
end
