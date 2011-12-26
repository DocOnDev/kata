class Converter
    NUMERALS = { 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
    def convert(number)
        return NUMERALS[number] if NUMERALS[number]
        to_roman(number) 
    end

    private

    def to_roman(number)
        result = ""
        NUMERALS.each do |value, numeral|
            while number >= value
                result += numeral
                number -= value
            end 
        end
        result
    end
end
