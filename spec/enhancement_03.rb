require_relative 'spec_helper'

# Enhancement 3
# A dead unit cannot attack another unit. Conversely, an alive unit will also not attack another unit that is already dead.

describe Unit do

  before :each do
    @unit = Unit.new(30, 5)
    @enemy_unit = Unit.new(30, 5)
  end

    it "is dead and cannot attack another unit" do
      @unit.should_receive(:dead?).and_return(true)
      expect(@unit.attack!(@enemy_unit)).to be_nil
    end

    it "is alive and cannot attack a dead unit" do
      @enemy_unit.should_receive(:dead?).and_return(true)
      expect(@unit.dead?).to be_falsey
      expect(@unit.attack!(@enemy_unit)).to be_nil
    end

end