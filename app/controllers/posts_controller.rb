class PostsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:edit, :destroy]
  def new
    @post = Post.new
  end
  
  def show
    @post = Post.find(params[:id])
    @pagy,@comments = pagy(@post.comments.includes(:user))
    @comment = current_user.comments.new
  end
  
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = 'メッセージを投稿しました。'
      redirect_to root_url
    else
      @pagy, @posts = pagy(current_user.posts.order(id: :desc))
      flash.now[:danger] = 'メッセージの投稿に失敗しました。'
      render :new
    end
  end

  def destroy
    @post.destroy
    flash[:success] = 'メッセージを削除しました。'
    redirect_to root_url
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      flash[:success] = '投稿は正常に更新されました'
      redirect_to root_url
    else
      flash.now[:danger] = '投稿は更新されませんでした'
      render :edit
    end
  end
  
  def search
    @pagy,@posts = pagy(Post.search(params[:schooltype], params[:grade], params[:subject_id], params[:schoolbook], params[:keyword]))
    @keyword = params[:keyword]
    @schooltype = params[:schooltype]
    @grade = params[:grade]
    @subject_id = params[:subject_id]
    @schoolbook = params[:schoolbook]
    render "search"
  end

  private

  def post_params
    params.require(:post).permit(:title, :subject_id, :content, :file, :file_cache, :grade, :schoolbook, :schooltype)
  end
  
  def correct_user
    @post = current_user.posts.find_by(id: params[:id])
    unless @post
      redirect_to root_url
    end
  end
end
