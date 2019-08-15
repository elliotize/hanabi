require "./color"

module Hanabi
  class Card
    getter color, value

    def initialize(color : String, value : UInt8)
      @color = Color.of(color)
      @value = value

      validate
    end

    def initialize(color : Color, value : UInt8)
      @color = color
      @value = value

      validate
    end

    def validate
      raise "card value must be between 1 and 5 inclusive" if @value > 5
    end
  end
end
