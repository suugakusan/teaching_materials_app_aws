class ToppagesController < ApplicationController
  def index
    if logged_in?
      @post = current_user.posts.build  # form_with 用
      @pagy, @posts = pagy(Post.order(id: :desc))
      @user = current_user
      @pagy, @favoritings = pagy(@user.favoritings)
    end
  end
end
