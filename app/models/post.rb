class Post < ApplicationRecord
  mount_uploader :file, FileUploader
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  validates :title, presence: true, length: { maximum: 255 }
  validates :file, presence: true, length: { maximum: 255 }
  validates :subject_id, presence: true, length: { maximum: 1 }
end
