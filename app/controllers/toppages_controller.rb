class ToppagesController < ApplicationController
  def index
    if logged_in?
      @post = current_user.posts.build
      if current_user.group === nil
        @pagy, @posts = pagy(Post.includes(:user).order(id: :desc))
      else
        showid = User.where(group: current_user.group).ids
        @pagy, @posts = pagy(Post.where(user_id: showid))
      end
      @user = current_user
      @pagy, @favoritings = pagy(@user.favoritings)
    end
  end
end
