require 'lib/weather_record'

class WeatherRecordTest
  describe WeatherRecord do
      before(:each) do
        @weather = WeatherRecord.new("01 99 24 9292 92 92 92 92")
      end
      
      it "should exist" do
        @weather
      end
      
      it "should have a day of 01" do
        @weather.day.should == 1
      end
      
      it "should have a high temp of 99" do
        @weather.high_temp.should == 99
      end
      
      it "shold have a low temp of 24" do
        @weather.low_temp.should == 24
      end
      
      it "should have a spread of 75" do
        @weather.spread.should == 75
      end
  end

  describe WeatherRecord do
      before(:each) do
        @weather = WeatherRecord.new("02 80 -4 9292 92 92 92 92")
      end
      
      it "should have a day of 02" do
        @weather.day.should == 2
      end
      
      it "should have a high temp of 99" do
        @weather.high_temp.should == 80
      end
      
      it "shold have a low temp of -4" do
        @weather.low_temp.should == -4
      end
      
      it "should have a spread of 88" do
        @weather.spread.should == 88
      end
  end
end