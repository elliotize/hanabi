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
end
