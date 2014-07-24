class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment= @post.comments.create(comment_params)
    #@comment.commentable_id=current_post.id
    redirect_to post_path(@post)
  end
  def comment_params
        params.require(:comment).permit(:context)
    end
end
