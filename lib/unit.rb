class Unit

  attr_reader :health_points, :attack_power
  attr_accessor :damage

  def initialize(health_points,attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    enemy.damage(attack_power)
  end

  def damage(amount)
    @health_points = @health_points - amount
  end
end