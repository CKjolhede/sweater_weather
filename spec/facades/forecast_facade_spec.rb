require 'rails_helper'

RSpec.describe ForecastFacade do
 xit "returns forecast" do
   data = {:lat=>39.738453, :lng=>-104.984853}
   ForecastFacade.get_forecast(data[:lat], data[:lng])
   
#binding.pry
   expect(forecast).to_not have_key(:minutely)
   expect(forecast[:current]).to have_key(:dt)
   expect(forecast[:current]).to have_key(:sunrise)
   expect(forecast[:current]).to have_key(:sunset)
   expect(forecast[:current]).to have_key(:temp)
   expect(forecast[:current]).to have_key(:feels_like)
   expect(forecast[:current]).to have_key(:humidity)
   expect(forecast[:current]).to have_key(:uvi)
   expect(forecast[:current]).to have_key(:visibility)
   expect(forecast[:current][:weather][0]).to have_key(:description)
   expect(forecast[:current][:weather][0]).to have_key(:icon)
  end
end