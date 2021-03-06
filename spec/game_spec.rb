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

    it 'should initialize with an attacking player' do
      expect(game.attacking_player).to eq game.player1
    end

    it 'should initialize with a defending player' do
      expect(game.defending_player).to eq game.player2
    end

  describe '#attack' do
    it 'should reduce the hit points of the attacked player' do
      expect { game.attack(game.player2) }.to change { game.player2.hit_points }.by -10
    end

    # it 'should call the change turn method after damaging the attacked player' do
    #   binding.pry
    #   game.attack(game.player2)
    #   expect(game.attack(game.player2)).to eq self.change_turn
    # end
  end

  describe '#change_turn' do
    it 'changes the player\'s turn' do
      game.attack(game.player2)
      expect{ game.change_turn }.to change { game.attacking_player }.from(game.player1).to(game.player2)
    end
  end
end
