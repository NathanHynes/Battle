require 'game'

describe Game do
  let(:player_2) { double :player_2, receive_damage: 10}
  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end
end
