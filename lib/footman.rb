# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'unit'

class Footman < Unit

  def initialize(health_points=60,attack_power=10)
    super(health_points,attack_power)
  end

  def attack!(enemy)
    if enemy.class.name == 'Barracks'
      blow = (attack_power/2).ceil
    else
      blow = attack_power
    end
    enemy.damage(blow)
  end

end
