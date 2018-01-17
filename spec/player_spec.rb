
describe Player do
  subject(:player) { described_class.new("Ed") }
  # let(:name) { double :name }

  describe 'initialize' do
    it 'should initialize with a name' do
      expect(player.name).to eq "Ed"
    end

    it 'should initialize with 100 hit points' do
      expect(player.hit_points).to eq 100
    end
  end

  describe '#attack' do
    it 'should reduce the hit points of the attacked player' do
      player2 = Player.new("Teddy")
      expect { player.attack(player2) } .to change { player2.hit_points } .by -10
    end
  end
end
