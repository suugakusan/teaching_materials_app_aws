class ToppagesController < ApplicationController
  def index
    if logged_in?
      @post = current_user.posts.build  # form_with 用
      @pagy, @posts = pagy(Post.order(id: :desc))
    end
  end
  
  def likes
    @user = User.find(params[:id])
    @pagy, @favoritings = pagy(@user.favoritings)
  end
  
  def followings
    @user = User.find(params[:id])
    @pagy, @followings = pagy(@user.followings)
  end
end
