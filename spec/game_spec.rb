# frozen_string_literal: true

require 'game'

describe Game do
  let(:player_1) { double :player_1, receive_damage: 10, hp: 50 }
  let(:player_2) { double :player_2, receive_damage: 10, hp: 50 }
  let(:game) { Game.new(player_1, player_2) }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#player1' do
    it 'shows player 1' do
      expect(game.player1).to eq player_1
    end
  end

  describe '#player2' do
    it 'shows player 2' do
      expect(game.player2).to eq player_2
    end
  end

  describe '#switch_turn' do
    it 'switches turn' do
      game.switch_turn
      expect(game.attacker).to eq player_2
    end
  end
  describe '#attacker' do
    it 'returns attackers name' do
      expect(game.attacker).to eq(player_1)
    end
  end

  describe '#defender' do
    it 'returns attackers name after switching turns' do
      game.switch_turn
      expect(game.defender).to eq(player_1)
    end
  end

  describe '#end_game?' do
    it 'returns false when players health full' do
      expect(game.end_game?).to eq(false)
    end

    it 'returns true when player has no HP' do
      allow(player_2).to receive(:hp) { 0 }
      expect(game.end_game?).to eq(true)
    end
  end
end
