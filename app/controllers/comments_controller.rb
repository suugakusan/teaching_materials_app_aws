class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      flash[:success] = 'コメントを投稿しました。'
      redirect_back(fallback_location: root_path)
    else
      flash[:danger] = 'コメントの投稿に失敗しました。'
      redirect_back(fallback_location: root_path)
      @error_comment = @comment
    end
  end
  
  def edit
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:post_id])
    comment = current_user.comments.find(params[:id])
    if comment.update(comment_params)
      flash[:success] = 'コメントは正常に更新されました'
      redirect_to post_path(@post)
    else
      flash.now[:danger] = 'コメントは更新されませんでした'
      render :edit
    end
  end
  
  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy
    flash[:success] = 'コメントを削除しました。'
    redirect_back(fallback_location: root_path)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_content, :post_id, :comment_file) 
  end
end
