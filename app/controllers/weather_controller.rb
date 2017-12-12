class WeatherController < ApplicationController
  before_action :define_reminders
  before_action :authenticate_user!


  def index
    if params[:longitude] && params[:latitude]
    longtude = params[:longitude].to_f
    latitude = params[:latitude].to_f
    end

    @reminders = Reminder.where(user:current_user)

    require 'forecast_io'
    ForecastIO.api_key = ENV['DARKSKY_API']
    @darksky = ForecastIO.forecast(latitude, longtude, params: { units: 'ca' })

   def start_date
     @darksky["daily"]["data"][i]["time"]
   end
  end
end
