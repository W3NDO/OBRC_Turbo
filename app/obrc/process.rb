require 'pry'

module OBRC # one Billion Rows Challenge
  # This will process the data from the CSV one line at a time.
  class RowsProcessor
    attr_accessor :cities

    def initialize
      self.cities = {}
    end

    def read_file
      file = File.readlines('../data/weather_stations.csv')
      file.each do |line|
        city_processor(line.scan(/(?<city>[\w\s]+);(?<temp>\d+(\.\d+)?)/))
      end
    end

    def city_processor(entries)
      entries.each do |entry|
        if cities.key?(entry[0])
          update_city(cities[entry[0]], entry[1])
        else
          temp_value = entry[1].to_f
          cities[entry[0]] = [temp_value, temp_value, temp_value, 1] # [ average, min, max, count ]
        end
      end
    end

    def update_city(city_name, new_value)
      new_value = new_value.to_f
      average, minimum, maximum, count = city_name
      new_average = ((average * count) + new_value) / (count + 1)
      new_minimum = new_value < minimum ? new_value : minimum
      new_maximum = new_value > maximum ? new_value : maximum
      new_count = count + 1

      cities[city_name] = [new_average, new_minimum, new_maximum, new_count]
    end
  end
end
