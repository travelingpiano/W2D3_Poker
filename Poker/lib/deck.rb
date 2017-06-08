require_relative "card"

class Deck
  attr_accessor :cards
  def initialize
    @cards = []
    populate_deck
  end

  def draw
    self.cards.shuffle!
    hand = self.cards.take(5)
    self.cards = self.cards.drop(5)
    return hand
  end

  private

  def populate_deck
    suites = [:c, :d, :h, :s]
    suites.each do |suite|
      (1..13).each do |num|
        @cards << Card.new(suite, num)
      end
    end
  end
end
