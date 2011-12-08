class RomanNumeral
    NUMERALS = { 1 => "I", 5 => "V", 10 => "X" }
    def convert(number)
        result = process_additions(number)
        result = process_symbols(number) if not result
        result
    end
    def process_symbols(number)
        NUMERALS[number]
    end
    def process_additions(number)
        result = ""
        while number > 0
            result += "I"
            number -= 1
        end
        return result
        return "III" if number == 3
        return "II" if number == 2
    end
end
