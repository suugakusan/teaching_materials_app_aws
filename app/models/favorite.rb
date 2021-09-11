class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  def feed_posts
    Post.where(user_id: self.following_ids + [self.id])
  end
  
  def favorite(like_post)
    self.favorites.find_or_create_by(post_id: like_post.id)
  end
   
  def unfavorite(like_post)
    favorite = self.favorites.find_by(post_id: like_post.id)
    favorite.destroy if favorite
  end
   
  def favoriting?(posts)
    self.favoritings.include?(posts)
  end
end
