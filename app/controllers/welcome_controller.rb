class WelcomeController < ApplicationController

  def index
    @posts = Post.all
  end

  def about
    render 'welcome/about'
  end
end
