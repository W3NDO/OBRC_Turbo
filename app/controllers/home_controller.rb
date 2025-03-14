class HomeController < ApplicationController
  def index
    @placeholder_record = {
      id: 1,
      name: "Place Holder Town",
      average: 0.0,
      recent: 0.0
    }

    @records = City.all
  end
end
