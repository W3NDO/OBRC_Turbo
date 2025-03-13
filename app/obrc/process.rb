module OBRC
  class RowsProcessor
    def read_file
      file = File.readlines("../data/weather_stations.csv")
      file.each do |line|
        _, _ = line.split(";")
      end
    end
  end
end

rp = OBRC::RowsProcessor.new

rp.read_file
