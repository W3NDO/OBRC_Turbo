require OBRC::RowsProcessor

# This job will read the rows, create  the cities or update them as need be.
class UpdateCityJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
  end
end
