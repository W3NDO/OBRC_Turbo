class City < ApplicationRecord
  after_create_commit -> {
    broadcast_prepend_to "cities",
                         partial: "home/towncard",
                         locals: { record: self },
                         target: "cities_list"
  }

  after_update_commit -> {
    broadcast_replace_to "city_#{self.id}",
                         partial: "home/towncard",
                         locals: { record: self },
                         target: "city_#{self.id}"
  }
end
