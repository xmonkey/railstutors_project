class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    if @post.save
      redirect_to posts_path
    else
      redirect_to @post, notice: 'Failed to add new post.'
    end
  end
end
