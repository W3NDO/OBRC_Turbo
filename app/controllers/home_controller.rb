class HomeController < ApplicationController
  def index
    @placeholder_record = {
      town: "Place Holder Town",
      avg: 22.3,
      recent: 18
    }
  end
end
