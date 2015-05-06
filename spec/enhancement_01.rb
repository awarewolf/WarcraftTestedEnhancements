require_relative 'spec_helper'

# Ennhancement 1

# In most strategy games, like Warcraft III, buildings can also be attacked by units. Since a barracks is a building, it has substantial more HP (500) To make matters worse, a Footman does only HALF of its AP as damage to a Barracks. This is because they are quite ineffective against

# Note: The damage amount should be an integer (Fixnum). Take the ceil division result.

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "starts off with 500 health points" do
    expect(@barracks.health_points).to eq(500)
  end

  it "starts off with 80 food resources" do
    expect(@barracks.food).to eq(80)
  end

end

describe Footman do

  before :each do
    @footman = Footman.new
  end

  describe "#attack!" do

    it "should do HALF of its AP as damage to a Barracks" do
      enemy = Barracks.new
      enemy.should_receive(:damage).with((@footman.attack_power/2).ceil)
      @footman.attack!(enemy)
    end
  end

end