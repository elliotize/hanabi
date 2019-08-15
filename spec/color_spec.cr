require "./spec_helper"

describe Hanabi::Color do
  it "of Red" do
    Hanabi::Color.of("red").should eq(Hanabi::Color::RED)
    Hanabi::Color.of("Red").should eq(Hanabi::Color::RED)
    Hanabi::Color.of("RED").should eq(Hanabi::Color::RED)
  end

  it "of Green" do
    Hanabi::Color.of("green").should eq(Hanabi::Color::GREEN)
  end

  it "of Blue" do
    Hanabi::Color.of("blue").should eq(Hanabi::Color::BLUE)
  end

  it "of Yellow" do
    Hanabi::Color.of("yellow").should eq(Hanabi::Color::YELLOW)
  end

  it "of White" do
    Hanabi::Color.of("white").should eq(Hanabi::Color::WHITE)
  end

  it "of Other" do
    expect_raises(Exception, "unknown color") do
      Hanabi::Color.of("gibberish")
    end
  end
end
