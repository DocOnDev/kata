require 'weather_record'

class Munge
  def initialize(file_name)
    @weather_records = []
    File.open(file_name).each { |line|
      @weather_records << WeatherRecord.new(line) if line.index(/^\d/)
    }
  end
  
  def biggest_spread_record
    max_spread = @weather_records[0]
    @weather_records.each do |r|
      max_spread = r if r.spread > max_spread.spread
    end
    return max_spread
  end
  
  def smallest_spread_record
    min_spread = @weather_records[0]
    @weather_records.each do |r|
      min_spread = r if r.spread < min_spread.spread
    end
    return min_spread
  end
  
  def tell_smallest_spread
    smallest = smallest_spread_record
    return "Day " + smallest.day.to_s + " had a spread of only " + smallest.spread.to_s + " degrees."
  end
  
  def tell_largest_spread
    largest = biggest_spread_record
    return "Day " + largest.day.to_s + " had a spread of " + largest.spread.to_s + " degrees."
  end
  
end