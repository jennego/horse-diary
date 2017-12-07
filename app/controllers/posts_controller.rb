class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :define_reminders


  def new
    @post = Post.new
    @horses = Horse.all.to_json
    @category = Category.all
    2.times {@post.post_images.build}
    render 'posts/new'


  end

  def create
    @post = Post.new post_params
    @post.user = current_user

   if  @post.save
     redirect_to posts_path
   end
  end

  def index
    @posts = Post.where(user:current_user).order(created_at: :desc)

  end

  def show
    find_post
    require 'time'
  end


  def edit
      find_post
      @category = Category.all

  end

  def update
    find_post
      @post.user = current_user
    if @post.update post_params
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    find_post
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :date, :horse_id, {category_ids:[]}, post_images_attributes: [:image_url, :id, :_destroy])
  end

  def find_post
  @post = Post.find params[:id]
  end

end
