class WeatherService
  def initialize(week)
    @week = week
    week = {}
  end
  def fetch_weather_data
    require 'open_weather'
    @forecast = OpenWeather::Forecast.city_id("6173331", options)


    5.times do |x|
    @date = @forecast["list"][x]["dt"]
    @wf = @forecast["list"][x]["weather"]
    @fmain = @forecast["list"][x]["main"]

    end



  end

  def parseResponse
    list = SomeRequest[:list]

    list.each { |d|
      WeatherDatum.new(hash)
    }

  end

end



{1: <weatherdatum>, 2: weatherinfo}



@weather[date.day].temp


class WeatherDatum

def intitialize(weather_hash)

  end
end
