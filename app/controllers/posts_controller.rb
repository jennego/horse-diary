class PostsController < ApplicationController
  def new
    @post = Post.new
    @horses = Horse.all.to_json
    puts @horses
    render 'posts/new'

  end

  def create
    @post = Post.new post_params
   if  @post.save
     redirect_to posts_path
   end
  end

  def index
    @posts = Post.order(created_at: :desc)

  end

  def show
    find_post
  end


  def edit
      find_post
  end

  def update
    find_post
    if @post.update post_params
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
