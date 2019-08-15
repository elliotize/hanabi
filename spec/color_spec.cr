require "./spec_helper"

module Hanabi
  describe Color do
    it "of Red" do
      Color.of("red").should eq(Color::RED)
      Color.of("Red").should eq(Color::RED)
      Color.of("RED").should eq(Color::RED)
    end

    it "of Green" do
      Color.of("green").should eq(Color::GREEN)
    end

    it "of Blue" do
      Color.of("blue").should eq(Color::BLUE)
    end

    it "of Yellow" do
      Color.of("yellow").should eq(Color::YELLOW)
    end

    it "of White" do
      Color.of("white").should eq(Color::WHITE)
    end

    it "of Other" do
      expect_raises(Exception, "unknown color") do
        Color.of("gibberish")
      end
    end
  end
end
