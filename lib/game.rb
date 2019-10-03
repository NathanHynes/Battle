# frozen_string_literal: true

require_relative 'player'

class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @players = [player1, player2]
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    player.receive_damage
  end

  def attacker
    @players[0]
  end

  def defender
    @players[1]
  end

  def switch_turn
    @players = @players.reverse
  end
end
