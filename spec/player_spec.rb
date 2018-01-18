
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
end
