require "./spec_helper"

describe Hanabi::Card do
  it "initializes with string" do
    card = Hanabi::Card.new("red", 1)
    card.color.should eq(Hanabi::Color::RED)
    card.value.should eq(1)
  end

  it "initializes with color" do
    card = Hanabi::Card.new(Hanabi::Color::RED, 1)
    card.color.should eq(Hanabi::Color::RED)
    card.value.should eq(1)
  end

  it "initializes only with good values" do
    ([1, 2, 3, 4, 5] of UInt8).each do |value|
      card = Hanabi::Card.new("red", value)
      card.value.should eq(value)
    end

    expect_raises(Exception, "card value must be between 1 and 5 inclusive") do
      Hanabi::Card.new("red", 6)
    end
  end
end
