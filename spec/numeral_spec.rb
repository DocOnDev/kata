require "numeral"

describe "Numeral" do
    let(:one) {Numeral.new(1, "I")}
    let(:five) {Numeral.new(5, "V")}
    let(:ten) {Numeral.new(10, "X")}
    describe "Basics" do
        it "should have a roman value and an arabic value" do
            number = Numeral.new("X", 10)
            number.arabic.should == 10
            number.roman.should == "X"
        end
        it "should accept values in any order" do
            number = Numeral.new(5, "V")
            number.arabic.should == 5
            number.roman.should == "V"
        end
    end
    describe "pair with" do
        it "can pair with another numeral" do
            five.pair = one
            five.pair.should == one
        end
        it "should subtract the pair" do
            five.pair = one
            five.pair_numeral.should == Numeral.new(4,"IV")
        end
        it "should not be aware of any pairing rules" do
            ten.pair = five
            ten.pair_numeral.should == Numeral.new(5,"VX")
        end
        it "should be able to see pair numeral details" do
            ten.pair = one
            ten.pair_numeral.arabic.should == 9
        end
    end
    describe "equality" do
        it "considers any numeral with same properties to be equal" do
            five.should == Numeral.new("V", 5)
        end
        it "considers any numeral with differing properties to be inequal" do
            five.should_not == Numeral.new(5, "Y")
        end
    end
end
