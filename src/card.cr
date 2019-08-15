require "./color"

module Hanabi
  class Card
    getter color, value

    def initialize(color : String, value : UInt8)
      @color = Hanabi::Color.of(color)
      @value = value
    end

    def initialize(color : Color, value : UInt8)
      @color = color
      @value = value
    end
  end
end
