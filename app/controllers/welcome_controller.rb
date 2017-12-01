class WelcomeController < ApplicationController

  def index
    @posts = Post.all
    require 'open_weather'
    require 'date'
    options = { units: "metric", APPID: ENV['OPEN_WEATHER'] }
    @weather = OpenWeather::Current.city_id("6173331", options)
    @forecast = OpenWeather::Forecast.city_id("6173331", options)

require 'forecast_io'

    ForecastIO.api_key = ENV['DARKSKY_API']

    @darksky = ForecastIO.forecast(49.2827, 123.1207, params: { units: 'si' })




  end

  def about
    render 'welcome/about'
  end

end
