class Comment < ApplicationRecord
  mount_uploader :comment_file, ImageUploader
  belongs_to :user
  belongs_to :post
  validates :comment_content, presence: true, length: { maximum: 255 }
end
