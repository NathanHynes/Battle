class Player
  attr_reader :name, :HP

  def initialize(name)
    @name = name
    @HP = 60
  end

  def attack(player2)
    player2.receive_damage
  end

  def receive_damage
    @HP -= 10
  end
end
