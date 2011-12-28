require 'symbol'

class Converter
    SYMBOLS = { 10 => "X", 5 => "V", 1 => "I" }

    def to_roman(arabic)
        return SYMBOLS[arabic] if SYMBOLS[arabic]
        result = ""
        SYMBOLS.each do |value, roman|
            while arabic >= value
                result << roman
                arabic -= value
            end
        end
        result
    end
end
