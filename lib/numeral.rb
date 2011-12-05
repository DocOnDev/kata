class RomanNumeral
    SYMBOLS = { 1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 9 => "IX", 5 => "V", 1 => "I" }

    def initialize
        @roman_numeral = ""
        @prior_digit = 10000
        @prior_numeral = ""
    end

    def convert(number)
        SYMBOLS.each { |digit, numeral|
            while number >= digit
                number = find_symbol_match(number, digit, numeral)
                number = build_subtractions(number, digit, numeral)
                number = build_additions(number, digit, numeral)
            end

            @prior_digit = digit
            @prior_numeral = numeral
        }
        @roman_numeral
    end

    private

    def find_symbol_match(number, digit, numeral)
        if number == digit
            @roman_numeral += numeral
            number = 0
        end
        return number
    end

    def build_subtractions(number, digit, numeral)
        if number_between_symbols(number, digit)
            @roman_numeral += numeral + @prior_numeral 
            number -= (@prior_digit - digit)
        end
        return number
    end

    def build_additions(number, digit, numeral)
        while number >= digit
            @roman_numeral += numeral
            number -= digit
        end
        number
    end

    def number_between_symbols(number, digit)
        range_top = @prior_digit-digit
        range_bottom = @prior_digit

        return number.between?(range_top, range_bottom)
    end
end
