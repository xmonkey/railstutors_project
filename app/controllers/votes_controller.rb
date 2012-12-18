class VotesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    vote = @post.votes.new()
    vote.upvote = params[:upvote]
    vote.user_id = current_user.try :id
    vote.save
    redirect_to posts_path
  end
end
