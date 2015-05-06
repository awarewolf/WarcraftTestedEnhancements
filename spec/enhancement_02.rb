require_relative 'spec_helper'

# Enhancement 2
# Units start off alive but they die if their HP hits 0 or lower. This is usually a result of receiving damage from combat.

# Implementation: Define a method dead? on the Unit class. We add it to Unit instead of Footman for example b/c all units can die, not just footman or peasants.

describe Unit do

  before :each do
    @unit = Unit.new(30, 5)
  end

    it "starts off alive" do
      expect(@unit.dead?).to be_falsey
    end

    it "dies if its HP hits 0 or lower" do
      enemy_unit = Unit.new(30, 35)
      enemy_unit.attack!(@unit)
      expect(@unit.dead?).to be_truthy
    end

end