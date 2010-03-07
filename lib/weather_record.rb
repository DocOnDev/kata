class WeatherRecord
  attr_reader :day, :high_temp, :low_temp
  
  def initialize(data_line)
    @day, @high_temp, @low_temp = data_line.split(' ',3).map {|item| item.to_i}
  end
  
  def spread
    low_temp = [@low_temp, @low_temp*2].min
    @high_temp - low_temp
  end
end