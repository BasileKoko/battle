
require'player'

describe Player do
  default_hit_point = Player::DEFAULT_HIT_POINT

  subject(:dave) {Player.new("Dave")}
  subject(:chris) {Player.new("Chris")}

  describe "#name" do
    it 'should return player name' do
      expect(dave.name).to eq "Dave"
    end
  end

  describe '#hit_point' do
    it 'returns the default hit point' do
      expect(dave.hit_point).to eq default_hit_point
    end
  end

  describe '#reduce_point' do
    it 'reduces hit point' do
      dave.reduce_point
      expect(dave.hit_point).to eq 35
    end
  end

 end
