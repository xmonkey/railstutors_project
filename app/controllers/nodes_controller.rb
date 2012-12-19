class NodesController < ApplicationController
  def show
    @node = Node.find(params[:id])
    @posts = @node.posts
    render "posts/index"
  end
end
