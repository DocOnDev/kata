require 'converter'

describe Converter do
    context "Conversion to Roman" do
        let(:converter) { Converter.new }

        describe "Base Numbers" do
            it "should convert arabic 1 to roman I" do
                converter.to_roman(1).should == "I"
            end
            it "should convert arabic 5 to roman V" do
                converter.to_roman(5).should == "V"
            end
            it "should convert arabic 10 to roman X" do
                converter.to_roman(10).should == "X"
            end
        end
        describe "Positive Ordinals" do
            it "should convert arabic 3 to III" do
                converter.to_roman(3).should == "III"
            end
            it "should convert arabic 2 to II" do
                converter.to_roman(2).should == "II"
            end
            it "should convert arabic 17 to XVII" do
                converter.to_roman(17).should == "XVII"
            end
        end
        describe "Negative Ordinals" do
            it "should convert arabic 4 to IV" do
                converter.to_roman(4).should == "IV"
            end
            it "should convert arabic 19 to XIX" do
                converter.to_roman(19).should == "XIX"
            end
            it "shold convert arabic 1989 to MCMLXXXIX" do
                converter.to_roman(1989).should == "MCMLXXXIX"
            end
        end
    end
end
