require './lib/game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
    let(:player_1) { double :player }
    let(:player_2) { double :player }

  describe '#attack' do
    it 'can attack the other player' do
    expect(player_2).to receive(:reduce_hit_points)
    game.attack(player_2)
    end
  end

  describe '#players' do
    it 'is can access player 1' do
      expect(game.player_1).to eq player_1
    end
    it 'is can access player 2' do
      expect(game.player_2).to eq player_2
    end

  end


end
