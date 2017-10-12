require './lib/player'

describe Player do
  subject(:owliver) { Player.new('owliver')}
  subject(:barry) { Player.new('barry')}

  describe '#name' do
    it 'returns the name' do
      expect(owliver.name).to eq 'owliver'
    end
  end

  describe '#hit points' do
    it 'returns the hit points' do
      expect(owliver.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { owliver.reduce_hit_points }.to change { owliver.hit_points }.by(-10)
    end
  end
end
