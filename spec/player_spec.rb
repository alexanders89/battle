require './lib/player'

describe Player do
  subject(:owliver) { Player.new('owliver')}

  describe '#name' do
    it 'returns the name' do
      expect(owliver.name).to eq 'owliver'
    end
  end
end
