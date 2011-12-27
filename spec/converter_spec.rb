require "converter"

describe "Converter" do
    let(:numeral) {Converter.new}
    context "Conversion to Roman" do
        describe "Base Numbers" do
            it "should convert number 1 to numeral I" do
                numeral.convert(1).should == "I"
            end
            it "should convert number 5 to numeral V" do
                numeral.convert(5).should == "V"
            end
            it "should convert number 10 to numeral X" do
                numeral.convert(10).should == "X"
            end
        end
        describe "Manage Additions" do
            it "should convert number 3 to numeral III" do
                numeral.convert(3).should == "III"
            end
            it "should convert number 2 to numeral II" do
                numeral.convert(2).should == "II"
            end
            it "should convert number 6 to numeral VI" do
                numeral.convert(6).should == "VI"
            end
            it "should convert number 17 to numeral XVII" do
                numeral.convert(17).should == "XVII"
            end
        end
        describe "Manage Subtractions", :subtraction => true do
            it "should convert number 4 to numeral IV" do
                numeral.convert(4).should == "IV"
            end
            it "should convert number 14 to numeral XIV" do
                numeral.convert(14).should == "XIV"
            end
            it "should convert number 40 to numeral XL" do
                numeral.convert(40).should == "XL"
            end
        end
    end
end
