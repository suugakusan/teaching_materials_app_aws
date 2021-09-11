class ApplicationController < ActionController::Base
  include SessionsHelper
  include Pagy::Backend
  
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_posts = user.posts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
  end
  
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
