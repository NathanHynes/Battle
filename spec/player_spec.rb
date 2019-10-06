# frozen_string_literal: true

require 'player'

describe Player do
  let(:player_1) { Player.new(name1) }
  let(:name1) { double :player_1 }
  let(:name2) { double :player_2 }
  let(:player_2) { Player.new(name2) }

  describe '#name' do
    it 'returns players name' do
      expect(player_1.name).to eq name1
    end
  end

  describe '#hit points' do
    it 'displays health' do
      expect(player_1.hp).to eq Player::DEFAULT_HP
    end
  end
  describe '# receive damage' do
    it 'reduces HP' do
      allow(player_1).to receive(:damage) { 10 }
      expect { player_1.receive_damage }.to change { player_1.hp }.by(-10)
    end

    it 'reduces players2 health by random amount' do
      allow(player_1).to receive(:damage) { 15 }
      expect { player_1.receive_damage }.to change { player_1.hp }.by(-15)
    end
  end

  describe '#heal' do
    it 'increases HP' do
      expect{ player_1.heal}.to change { player_1.hp }.by(10)
    end

    describe '#count_heal' do
      it 'counts how many times you have healed' do
        expect{ player_1.heal}.to change {player_1.count_heal}.by(1)
      end
    end
  end
end
