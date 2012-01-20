
class Fib
    @@solved_positions = []
    def [](place)
        return solved_positions[place] if solved_positions.fetch(place, false)
        return solved_positions[place] = calculate_it(place) if place >= 2
        place
    end

    private
    def solved_positions
        @@solved_positions
    end
    def calculate_it(place)
        self[place-1] + self[place-2]
    end
end

describe Fib do
    let(:fib){ Fib.new }
    it "is 0 at the 0 digit" do
        fib[0].should == 0
    end
    it "is 1 at the 1 digit" do
        fib[1].should == 1
    end
    it "is 1 at the 2 digit" do
        fib[2].should == 1
    end
    it "is 2 at the 3 digit" do
        fib[3].should == 2
    end
    it "is 3 at the 4 digit" do
        fib[4].should == 3
    end
    it "is 5 at the 5 digit" do
        fib[5].should == 5
    end
    it "is 8 at the 6 digit" do
        fib[6].should == 8
    end
    it "is 13 at the 7 digit" do
        fib[7].should == 13
    end
    it "is 1000 at 50" do
        fib[50].should == 1000
    end
end
