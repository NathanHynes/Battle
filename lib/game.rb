# frozen_string_literal: true

class Game
  attr_reader :player1, :player2, :current_turn

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @player1 = player1
    @player2 = player2
  end

  def attack(opponent)
    opponent.receive_damage
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

  def end_game?
    self.defender.hp <= 0
  end
end
