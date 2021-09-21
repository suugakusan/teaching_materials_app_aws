class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    @favorite = Post.find(params[:post_id])
    @post = Post.find(params[:post_id])
    current_user.favorite(@post)
  end

  def destroy
     @favorite = Post.find(params[:post_id])
    @post = Post.find(params[:post_id])
    current_user.unfavorite(@post)
  end
end
