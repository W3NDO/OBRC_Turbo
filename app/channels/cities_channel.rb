class CitiesChannel < ApplicationCable::Channel
  def subscribed
    city = City.find(params[:id])
    stream_from "city_#{city.id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
