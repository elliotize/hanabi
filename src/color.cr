module Hanabi
  enum Color : UInt8
    RED
    GREEN
    BLUE
    YELLOW
    WHITE

    def self.of(color : String)
      color = color.upcase

      case color
      when "RED"
        return RED
      when "GREEN"
        return GREEN
      when "BLUE"
        return BLUE
      when "YELLOW"
        return YELLOW
      when "WHITE"
        return WHITE
      else
        raise "unknown color"
      end
    end
  end
end
