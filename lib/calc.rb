class Calc
    attr_accessor :numbers

    def add(numbers)
        @numbers = numbers
        return total(@numbers.split(build_delimiter))
    end

    private

    def total(nums)
        return negative_warning(nums) if contains_negatives?(nums)
        total = 0
        nums.each{ |num| total += num.to_i }
        total
    end

    def build_delimiter
        delimiter = %r{\n|,}
        if has_custom_delimiter
            delimiter = build_custom_delimiter
        end
        delimiter
    end

    def has_custom_delimiter
        @numbers.slice(0..1) == "//"
    end

    def build_custom_delimiter
        @numbers.slice!(0..1)
        parts = @numbers.split("\n",2)
        @numbers = parts[1]
        parts[0]
    end

    def contains_negatives?(nums)
        gather_negatives(nums).length > 0
    end

    def negative_warning(nums)
        message = "negatives not allowed:"
        gather_negatives(nums).each{ |neg| message << " " << neg }
        message
    end

    def gather_negatives(nums)
        nums.select{ |num| num.to_i < 0 }
    end
end
