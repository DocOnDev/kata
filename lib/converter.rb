require 'symbol'

class Converter
    SYMBOLS = { 
        1000 => Symbols.new("M",1000), 
        500 => Symbols.new("D",500), 
        100 => Symbols.new("C",100,true), 
        50 => Symbols.new("L",50), 
        10 => Symbols.new("X",10,true), 
        5 => Symbols.new("V",5), 
        1 => Symbols.new("I",1,true) }

    def initialize
        @result = ""
    end

    def to_roman(arabic)
        return SYMBOLS[arabic].roman if SYMBOLS[arabic]
        reduce_arabic(arabic)
    end

    def reduce_arabic(arabic)
        SYMBOLS.each do |value, symbol|
            arabic = ordinal_right(arabic, symbol)
            arabic = ordinal_left(arabic, symbol)
        end
        @result
    end

    def ordinal_right(arabic, symbol)
        while arabic >= symbol.arabic
            arabic = append_symbol(arabic, symbol)
        end
        arabic
    end

    def ordinal_left(arabic, symbol)
        subset = SYMBOLS.reject {|key,sym| key >= symbol.arabic}
        subset.each do |key, ord_symbol|
            if ord_symbol.ordinator
                subtraction = make_subtraction(ord_symbol, symbol)
                arabic = append_symbol(arabic, subtraction) if arabic >= subtraction.arabic
            end
        end
        arabic
    end

    def append_symbol(arabic, symbol)
        @result << symbol.roman
        arabic -= symbol.arabic
    end

    def make_subtraction(ord_symbol, symbol)
        Symbols.new(ord_symbol.roman + symbol.roman, symbol.arabic - ord_symbol.arabic)

    end
end
