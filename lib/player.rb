# frozen_string_literal: true

require_relative 'game'

class Player
  attr_reader :name, :hp

  DEFAULT_HP = 100
  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= damage
  end

  private

  def damage
    rand(0..15)
  end
end
