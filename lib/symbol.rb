class Symbols
    attr_accessor :roman
    attr_accessor :arabic
    attr_accessor :ordinator

    def initialize(roman, arabic, ordinator=false)
        @roman = roman
        @arabic = arabic
        @ordinator = ordinator
    end
end
