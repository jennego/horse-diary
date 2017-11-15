class PostsController < ApplicationController
  def new
    @post = Post.new
    render 'posts/new'
  end

  def create
    @post = Post.new post_params
    @post.save
  end

  def index
  end

  def sbow
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
