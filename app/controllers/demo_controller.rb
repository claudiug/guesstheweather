class DemoController < ApplicationController
  def index
    if params[:lat] && params[:lgn]
      @forecast = ForecastIO.forecast(params[:lat], params[:lgn],  params: { units: 'si' })
    else
      @forecast = ForecastIO.forecast(53.2000, 13.000,  params: { units: 'si' })
    end

     #render json: @forecast[:daily][:data]
  end
end
