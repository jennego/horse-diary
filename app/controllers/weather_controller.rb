class WeatherController < ApplicationController
  before_action :authenticate_user!
  before_action :define_reminders


  def index
    @reminders = Reminder.all

   require 'forecast_io'

    ForecastIO.api_key = ENV['DARKSKY_API']
    @darksky = ForecastIO.forecast(49.2827, -123.1207, params: { units: 'ca' })

   def start_date
     @darksky["daily"]["data"][i]["time"]
   end
  end
end
