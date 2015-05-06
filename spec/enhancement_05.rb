require_relative 'spec_helper'

# Enhancement 5
# Introduce a SiegeEngine Unit. The SiegeEngine is very effective against buildings such as the Barracks. It is however ineffective against other units (can't attack them, as though they were dead).

# So unlike with Footman (whose attacks do a fraction of the damage they normally would), the SiegeEngine does 2x the damage against the Barracks

# Also, Siege Engines can attack other siege engines even though they cannot attack any other units (such as Peasants or Footmen)

# Stats:

# AP: 50
# HP: 400
# Cost: 200 gold, 60 lumber, 3 food
# Notes:

# You will need to require the seige_engine.rb file in spec_helper.rb

describe Barracks do

  let(:gold_cost) {200}
  let(:lumber_cost) {60}
  let(:food_cost) {3}
  subject(:barracks) {Barracks.new}

  before :each do
    @gold = barracks.gold
    @lumber = barracks.lumber
    @food = barracks.food
  end

  describe "#make_siege_engine" do

    it "costs 200 gold" do
      barracks.make_siege_engine
      expect(barracks.gold).to eq(@gold-gold_cost)
    end

    it "costs 60 lumber" do
      barracks.make_siege_engine
      expect(barracks.lumber).to eq(@lumber-lumber_cost)
    end

    it "costs 3 food" do
      barracks.make_siege_engine
      expect(barracks.food).to eq(@food-food_cost)
      # starts at 80
    end

    it "produces a siege_engine unit" do
      siege_engine = barracks.make_siege_engine
      expect(siege_engine).to be_a(Unit)
    end

  end

end

describe SiegeEngine do

  subject(:siege_engine) {SiegeEngine.new}

  describe "#attack!" do

    it "should do DOUBLE of its AP as damage to a Barracks" do
      enemy = Barracks.new
      enemy.should_receive(:damage).with((siege_engine.attack_power*2).ceil)
      siege_engine.attack!(enemy)
    end

  end

end