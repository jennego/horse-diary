class WelcomeController < ApplicationController

  def index
    @posts = Post.all
    require 'open_weather'
    require 'date'
    options = { units: "metric", APPID: ENV['OPEN_WEATHER'] }
    @weather = OpenWeather::Current.city_id("6173331", options)
    @forecast = OpenWeather::Forecast.city_id("6173331", options)

  end

  def about
    render 'welcome/about'
  end

end
