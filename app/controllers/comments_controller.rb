class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment= @post.comments.create(comment_params)
    @comment.commentable_id=current_user.id
    redirect_to post_path(@post)
  end
  def comment_params
        params.require(:comment).permit(:context)
    end

def destroy
        blog=nil
        Comment.find(params[:id]).tap{|comment| blog = comment.blog}.destroy
        flash[:notice]="comment deleted successfully"
        redirect_to blog_path(blog)
end
end
