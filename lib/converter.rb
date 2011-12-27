require 'numeral'

class Converter
    NUMERALS = { 1000 => Numeral.new(1000,"M"), 500 => Numeral.new(500,"D"), 100 => Numeral.new(100,"C"), 50 => Numeral.new(50,"L"), 10 => Numeral.new(10,"X"), 5 => Numeral.new(5,"V"), 1 => Numeral.new(1,"I") }

    def initialize
        @result = ""
        NUMERALS[5].subtrahend = NUMERALS[1]
        NUMERALS[10].subtrahend = NUMERALS[1]
        NUMERALS[50].subtrahend = NUMERALS[10]
        NUMERALS[100].subtrahend = NUMERALS[10]
        NUMERALS[500].subtrahend = NUMERALS[100]
        NUMERALS[1000].subtrahend = NUMERALS[100]
    end

    def convert(number)
        return NUMERALS[number].roman if NUMERALS[number]
        to_roman(number) 
        @result
    end

    private

    def to_roman(number)
        NUMERALS.each do |value, numeral|
            number = roman_reduce(number, numeral)
            number = roman_reduce(number, numeral.difference) if numeral.difference
        end
    end

    def roman_reduce(number, numeral)
        while number >= numeral.arabic
            @result += numeral.roman
            number -= numeral.arabic
        end 
        number
    end
end
