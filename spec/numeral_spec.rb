require "numeral"

describe "Roman Numerals" do
    before(:each) do
        @numeral = RomanNumeral.new
    end
    context "Base Numbers" do
        it "should convert number 1 to numeral I" do
            @numeral.convert(1).should == "I"
        end
        it "should convert number 5 to numeral V" do
            @numeral.convert(5).should == "V"
        end
        it "should convert number 10 to numeral X" do
            @numeral.convert(10).should == "X"
        end
    end
    context "Manage Additions" do
        it "should convert number 3 to numeral III" do
            @numeral.convert(3).should == "III"
        end
        it "should convert number 2 to numeral II" do
            @numeral.convert(2).should == "II"
        end
    end
end
