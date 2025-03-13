class City < ApplicationRecord
    after_create_commit -> { 
        broadcast_prepend_to "cities_channel", 
        partial: "home/towncard",
        locals: { 
            record: self
        },
        target: "city"
    }

    after_update_commit -> {
        broadcast_replace_to "cities_channel", 
        partial: "home/towncard",
        locals: { 
            record: self
        },
        target: "cities"
    }

    def update_city(new_value, name)
        
    end
end
