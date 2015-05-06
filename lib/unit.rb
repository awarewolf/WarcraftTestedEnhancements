class Unit

  attr_reader :health_points, :attack_power, :dead
  attr_accessor :damage

  def initialize(health_points,attack_power,dead=false)
    @health_points = health_points
    @attack_power = attack_power
    @dead = dead
  end

  def dead?
    @dead
  end

  def attack!(enemy)
      enemy.damage(attack_power) unless dead? || enemy.dead?
  end

  def damage(amount)
    @health_points = @health_points - amount
    if @health_points <=0
      @dead = true
    end
    @health_points
  end
end