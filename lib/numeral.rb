class Numeral
    attr_accessor :arabic
    attr_accessor :roman
    attr_accessor :pair

    def initialize(*args)
        if args[0] == args[0].to_i
            @roman = args[1]
            @arabic = args[0]
        else
            @roman = args[0]
            @arabic = args[1]
        end
    end

    def pair_numeral
        return Numeral.new(@arabic - @pair.arabic, @pair.roman + roman) if @pair
        nil
    end

    def ==(compare_to)
        return @arabic = compare_to.arabic && @roman == compare_to.roman
    end
end
