class DemoController < ApplicationController

  def index

  end

  def result
    @forecast = calculate_weather(get_data_for_weather[0], get_data_for_weather[1])
  end

  def api_weather
    #TODO make it work :)
    render json:  @forecast[:daily][:data]
  end

  private

  def get_data_for_weather
    @geocoder = Geocoder.search(params[:name])
    @geocoder[0].data["geometry"]["location"].values
  end

  def calculate_weather(lat, lgn)
    ForecastIO.forecast(lat, lgn,
                        params: { units: 'si',
                                  exclude: 'minutely,hourly,flags,alerts'})

  end




  def get_location
    @lat_lgn = cookies[:lat_lgn].split("|").class
    puts @lat_lgn

  end



  def get_random_data
    data = [
        [53.2000, 13.000],
        [3,4],
        [5,6]
    ].sample
  end
end
