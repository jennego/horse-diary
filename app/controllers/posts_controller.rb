class PostsController < ApplicationController
  def new
    @post = Post.new
    render 'posts/new'

    @horses = Horse.all 
  end

  def create
    @post = Post.new post_params
   if  @post.save
     redirect_to posts_path
   end
  end

  def index
    @posts = Post.all
  end

  def show
    find_post
  end


  def edit
  end

  def update
    if @post.update question_params
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def delete
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :date, :horse_id, {category_ids:[]})
  end

  def find_post
  @post = Post.find params[:id]
  end

end
