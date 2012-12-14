class CommentsController < ApplicationController
  before_filter :require_user, only: [:create]
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    @comment.user = current_user
    if @comment.save
      redirect_to @post
    else
      redirect_to @post, notice: 'Failed to add new comment.'
    end
  end
end
