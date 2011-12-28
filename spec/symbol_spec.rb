require "symbol"

describe "Symbol" do
    describe "Basic features" do
        it "should have an arabic value" do
            symbol = Symbols.new("X", 10)
            symbol.arabic.should == 10
        end
        it "should have a roman value" do
            symbol = Symbols.new("X", 10)
            symbol.roman.should == "X"
        end
        it "should not be an ordinator by default" do
            one = Symbols.new("I", 1)
            one.ordinator.should == false
        end
        it "should optionally be an ordinator" do
            one = Symbols.new("I", 1, true)
            one.ordinator.should == true
        end
    end
end
