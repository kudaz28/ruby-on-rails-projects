class SensorController < ApplicationController
  include ActionController::Live

  def temperature
    response.headers['Content-Type'] = 'text/event-stream'
    100.times
    {
      response.stream.write("The temperature is #{100*rand} degrees Celcius")
      response.stream.write("\n")
      sleep 0.5
    }
    response.stream.write("That's all for now")
  ensure
    response.stream.close
  end
end
