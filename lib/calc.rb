class Calc
    def add(numbers)
        total = 0
        nums = numbers.split(',')
        nums.each{ |num| total += num.to_i }
        total
    end
end
