# frozen_string_literal: true

require_relative 'game'

class Player
  attr_reader :name, :hp, :count_heal

  DEFAULT_HP = 100
  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
    @count_heal = 0
  end

  def receive_damage
    @hp -= damage
  end

  def heal
    @count_heal += 1
    @hp += 10
  end

  private

  def damage
    rand(0..15)
  end
end
