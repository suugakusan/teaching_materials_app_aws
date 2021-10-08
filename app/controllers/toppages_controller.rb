class ToppagesController < ApplicationController
  def index
    if logged_in?
      @post = current_user.posts.build
      @pagy, @posts = pagy(Post.includes(:user).order(id: :desc))
      @user = current_user
      @pagy, @favoritings = pagy(@user.favoritings)
    end
  end
end
