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

     describe '#lose' do
    	it 'the game will lose' do
     allow(player_2).to receive(:hit_point).and_return(0)
     allow(player_1).to receive(:hit_point).and_return(10)
     expect(game.lose?).to eq true
    end
  end

end
