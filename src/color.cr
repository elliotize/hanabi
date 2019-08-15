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
        return Color::RED
      when "GREEN"
        return Color::GREEN
      when "BLUE"
        return Color::BLUE
      when "YELLOW"
        return Color::YELLOW
      when "WHITE"
        return Color::WHITE
      else
        raise "unknown color"
      end
    end
  end
end
