# frozen_string_literal: true

require 'game'

describe Game do
  let(:player_1) { double :player_1, receive_damage: 10 }
  let(:player_2) { double :player_2, receive_damage: 10 }
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
end
