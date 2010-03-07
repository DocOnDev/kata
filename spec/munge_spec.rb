require 'lib/munge'

class MungeTest
  describe Munge do
    before(:each) do
      @munge = Munge.new('resource/weather.dat')
    end
    
    it "should exist" do
      @munge
    end
    
    it "should have a biggest spread" do
      @munge.biggest_spread_record
    end
    
    it "should have a biggest spread of 54" do
      @munge.biggest_spread_record.spread.should == 54
    end

    it "should tell us the largest spread" do
      @munge.tell_largest_spread.should == "Day 9 had a spread of 54 degrees."
    end

    it "should have a smallest spread of 2" do
      @munge.smallest_spread_record.spread.should == 2
    end
    
    it "should tell us the smallest spread" do
      @munge.tell_smallest_spread.should == "Day 14 had a spread of only 2 degrees."
    end
  end
end
