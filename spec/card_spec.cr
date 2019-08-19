require "./spec_helper"

module Hanabi
  describe Card do
    it "initializes with color" do
      card = Card.new(Color::RED, 1)
      card.color.should eq(Color::RED)
      card.value.should eq(1)
    end

    it "initializes only with good values" do
      ([1, 2, 3, 4, 5] of UInt8).each do |value|
        card = Card.new(Color::RED, value)
        card.value.should eq(value)
      end

      expect_raises(Exception, "card value must be between 1 and 5 inclusive") do
        Card.new(Color::RED, 6)
      end
    end
  end
end
