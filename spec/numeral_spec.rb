require "numeral"

describe "@roman.Numerals" do
    before(:each) do
        @roman = RomanNumeral.new
    end
    context "Base Numbers" do
        it "should convert number 1 to numeral I" do
            @roman.convert(1).should == "I"
        end

        it "should convert number 5 to numeral V" do
            @roman.convert(5).should == "V"
        end

        it "should convert number 10 to numeral X" do
            @roman.convert(10).should == "X"
        end

    end
    context "Additions" do
        it "should convert number 3 to III" do
            @roman.convert(3).should == "III"
        end
    end
    context "Subtractions" do
        it "should convert number 4 to IV" do
            @roman.convert(4).should == "IV"
        end

        it "should convert number 9 to IX" do
            @roman.convert(9).should == "IX"
        end

        it "should convert number 49 to XLIX" do
            @roman.convert(49).should == "XLIX"
        end

        it "should convert number 40 to XL" do
            @roman.convert(40).should == "XL"
        end
    end
end
