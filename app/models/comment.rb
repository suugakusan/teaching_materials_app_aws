class Comment < ApplicationRecord
  mount_uploader :comment_file, ImageUploader
  belongs_to :user
  belongs_to :post
end
