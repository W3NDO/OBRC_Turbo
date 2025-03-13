class HomeController < ApplicationController
  def index
    @placeholder_record = {
      id: 1,
      town: "Place Holder Town",
      avg: 22.3,
      recent: 18
    }

    @records = City.all
  end
end
