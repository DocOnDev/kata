require "calc"

describe "String Calculator" do
    describe "add" do
        it "should return 0 for an empty string" do
            calc = Calc.new
            calc.add("").should == 0
        end
    end
end
