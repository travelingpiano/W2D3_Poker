require 'deck'

describe "deck" do
  subject(:deck) { Deck.new }
  let(:card) { double("card", suite: :c, value: 8) }

  it "populates a deck of cards" do
    expect(deck.cards.length).to eq(52)
  end

  it "draw 5 cards from itself" do
    expect(deck.draw.length).to eq(5)
  end

end
