require "lib/chop"

class TestChop
  describe Chop do
    
    before(:each) do
      @chop = Chop.new
      @small_odds = [1,3,5,7,9,11]
      @large_array = (0..99).to_a
    end
    
    it "should exist" do
      @chop
    end
    
    it "should return -1 if array is empty" do
      @chop.binary_chop(2, []).should == -1
    end
    
    it "should return -1 if target is not in array" do
      @chop.binary_chop(2, @small_odds).should == -1
    end
    
    it "should return 0 if target is first in list" do
      @chop.binary_chop(@small_odds[0], @small_odds).should == 0
    end
    
    it "should return last index if target is last in list" do
      @chop.binary_chop(@small_odds[-1], @small_odds ).should == @small_odds.size - 1
    end
    
    it "should return index of target if in array" do
      @chop.binary_chop(5, @small_odds).should == @small_odds.index(5)
      @chop.binary_chop(49, @large_array).should == 49
      @chop.binary_chop(74, @large_array).should == 74
    end
  end
end