require 'game'
require 'player'

describe Game do

  subject(:game) {described_class.new }

  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#attack' do
    it 'should reduce the hit points of the attacked player' do
      player2 = Player.new("Teddy")
      expect { game.attack(player2) }.to change { player2.hit_points } .by -10
    end
  end

end
