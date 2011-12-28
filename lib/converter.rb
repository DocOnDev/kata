require 'symbol'

class Converter
    SYMBOLS = { 10 => "X", 5 => "V", 1 => "I" }

    def to_roman(arabic)
        return SYMBOLS[arabic]
    end
end
