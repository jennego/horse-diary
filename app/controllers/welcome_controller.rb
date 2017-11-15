class WelcomeController < ApplicationController
  def index
    render 'welcome/index'
  end

  def about
    render 'welcome/about'
  end
end
