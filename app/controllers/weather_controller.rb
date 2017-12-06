class WeatherController < ApplicationController
  before_action :authenticate_user!
  before_action :define_reminders


  def index
    if params[:longitude] && params[:latitude]
    longtude = params[:longitude].to_f
    latitude = params[:latitude].to_f
    end

    @reminders = Reminder.all

    require 'forecast_io'
    ForecastIO.api_key = ENV['DARKSKY_API']
    @darksky = ForecastIO.forecast(latitude, longtude, params: { units: 'ca' })

   def start_date
     @darksky["daily"]["data"][i]["time"]
   end
  end
end
