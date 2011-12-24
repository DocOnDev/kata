require "calc"

describe "String Calculator" do
    let(:calc) {Calc.new}

    describe "add" do
        it "should return 0 for an empty string" do
            calc.add("").should == 0
        end
        it "should return 1 for a string of '1'" do
            calc.add("1").should == 1
        end
        it "should return 20 for a string of '20'" do
            calc.add("20").should == 20
        end
        it "should add numbers delimited with a comma" do
            calc.add("1,2").should == 3
        end
    end
end
