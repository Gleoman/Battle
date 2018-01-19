require 'game'
require 'player'

describe Game do

  subject(:game) {described_class.new(Player.new("Ed"), Player.new("Teddy")) }

  # let(:player1) { double :player }
  # let(:player2) { double :player }

    it 'should initialize with a new player1' do
      expect(game.player1.name).to eq "Ed"
    end

    it 'should initialize with a new player2' do
      expect(game.player2.name).to eq "Teddy"
    end

  describe '#attack' do
    it 'should reduce the hit points of the attacked player' do
      expect { game.attack(game.player2) }.to change { game.player2.hit_points } .by -10
    end
  end

end
