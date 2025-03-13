class CitiesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "cities_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
