require 'game'

describe Game do
  subject(:game) { described_class.new(player_1,player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'attacks the player' do
      expect(player_2).to receive(:reduce_point)
      game.attack_player(player_2)
    end
  end
end
