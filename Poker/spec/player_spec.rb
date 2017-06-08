require 'player'

describe "player" do
  subject(:player){Player.new("Bob",100)}
  let(:deck){double("deck")}

  describe "initalize" do
    it "initializes the name" do
      expect(player.name).to eq("Bob")
    end
    it "initializes the pot" do
      expect(player.pot).to eq(100)
    end
    it "initializes an empty hand" do
      expect(player.hand).to eq([])
    end
  end

  describe "draw" do
    it "draws 5 cards" do
      allow(deck).to receive(:draw).and_return(Array.new(5))
      player.draw(deck)
      expect(player.hand.length).to eq(5)
    end
  end

  describe "fold" do
    it "folds when player wants to fold" do
      allow(deck).to receive(:draw).and_return(Array.new(5))
      player.draw(deck)
      player.fold
      expect(player.hand).to eq([])
    end
  end

end
