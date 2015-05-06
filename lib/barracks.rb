class Barracks

  attr_accessor :gold, :food, :lumber, :health_points

  def initialize(gold=1000,food=80,lumber=500, health_points=500)
    @gold = gold
    @food = food
    @lumber = lumber
    @health_points = health_points
  end

  def can_make_siege_engine?
    gold >= 200 && lumber >= 60 && food >= 3
  end

  def make_siege_engine
    if can_make_siege_engine?
      @gold -= 200
      @lumber -= 60
      @food -= 3
      SiegeEngine.new
    end
  end

  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new
    end
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end

  def damage(amount)
    @health_points = @health_points - amount
  end

end
