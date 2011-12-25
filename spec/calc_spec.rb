require "calc"

describe "String Calculator" do
    let(:calc) {Calc.new}

    describe "add" do
        describe "simple strings" do
            it "should return 0 for an empty string" do
                calc.add("").should == 0
            end
            it "should return 1 for a string of '1'" do
                calc.add("1").should == 1
            end
            it "should return 20 for a string of '20'" do
                calc.add("20").should == 20
            end
        end
        describe "comma delimited" do
            it "should return 3 for a string of '1,2'" do
                calc.add("1,2").should == 3
            end
            it "should return 20 for a string of '1,2,3,4,10'" do
                calc.add("1,2,3,4,10").should == 20
            end
        end
        describe "newline delimited" do
            it "should support a newline delimiter" do
                calc.add("1\n2\n3").should == 6
            end
        end
        describe "newline and comma delimited" do
            it "should return 4 for a string of '1,1\n2'" do
                calc.add("1,1\n2").should == 4
            end
        end
        describe "custom delimiters" do
            it "should return 4 for a string of '//;\n1;1;2'" do
                calc.add("//;\n1;1;2").should == 4
            end
        end
        describe "negative numbers" do
            it "should fail and report a single negative" do
                calc.add("1,-1,2").should == "negatives not allowed: -1"
            end
            it "should fail and report -2 for a string of '1,1,-2'" do
                calc.add("1,1,-2").should == "negatives not allowed: -2"
            end
            it "should fail and report multiple negatives" do
                calc.add("1,-1,2,-2,-3").should == "negatives not allowed: -1 -2 -3"
            end
        end
    end
end
