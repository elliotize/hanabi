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
    expect_raises(Exception, "card value must be between 1 and 5 inclusive") do
      Hanabi::Card.new("red", 6)
    end

    card = Hanabi::Card.new("red", 5)
    card.value.should eq(5)
  end
end
