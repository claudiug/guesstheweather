module DemoHelper

  def get_data_forecast
    if @forecast[:daily][:data].nil?
      []
    else
      @forecast[:daily][:data].each do |p|
        {
            time: p,
            summary: p,
            sunriseTime: p,
            sunsetTime: p,
            temperatureMax: p,
        }

      end
    end
  end
end
