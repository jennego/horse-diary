class WelcomeController < ApplicationController

  def index
    @posts = Post.all

   require 'forecast_io'

    ForecastIO.api_key = ENV['DARKSKY_API']
    @darksky = ForecastIO.forecast(49.2827, -123.1207, params: { units: 'ca' })




  end

  def about
    render 'welcome/about'
  end

end
