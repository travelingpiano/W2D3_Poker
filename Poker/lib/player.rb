require_relative "hand"
require_relative "deck"

class Player
  attr_accessor :name, :pot, :hand
  def initialize(name,val)
    @name = name
    @pot = val
    @hand = []
  end

  def draw(deck)
    @hand = Hand.new(deck.draw)
    @hand
  end

  def fold
    @hand = []
  end

end
