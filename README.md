## Adding Warcraft III Game Enhancements via TDD

Let's write some enhancements to the game.
Write out the specs (tests) first as well as the functionality for the following enhancements.

Use the RSpec + TDD from the weekend homework as reference or review it prior to starting, if you'd like.

Though though is not standard practice, for our learning purposes you can write each enhancement as a new `test_##.rb` file. Remember to `require 'spec_helper'` at the top. On that note, refer to the other similar specs to remember syntax on how they are implemented.

### Resources

Below is a list of external resources concerning TDD and/or RSpec. You don't have to go through each of these before starting the enhancements, they are simply references / resources for you to use at your discretion.

1. <http://rspec.codeschool.com/levels/1>
2. <https://www.youtube.com/watch?v=nBtO1UOK9Hs>
3. <http://www.agiledata.org/essays/tdd.html>
4. <http://blog.teamtreehouse.com/an-introduction-to-rspec>
5. <https://www.relishapp.com/rspec/rspec-core/v/2-4/docs>
6. <http://betterspecs.org/>
7. <http://code.tutsplus.com/tutorials/ruby-for-newbies-testing-with-rspec--net-21297>

## Enhancements

Below are the list of enhancements you will be making to the Warcraft 3 game today. Please do them in order.

### Enhancement 1

In most strategy games, like Warcraft III, buildings can also be attacked by units.
Since a barracks is a building, it has substantial more HP (500)
To make matters worse, a Footman does only HALF of its AP as damage to a Barracks. This is because they are quite ineffective against

**Note:** The damage amount should be an integer (`Fixnum`). Take the `ceil` division result.

### Enhancement 2

Units start off alive but they die if their HP hits 0 or lower.
This is usually a result of receiving damage from combat.

_Implementation:_ Define a method `dead?` on the `Unit` class. We add it to `Unit` instead of `Footman` for example b/c all units can die, not just footman or peasants.

### Enhancement 3

A dead unit cannot attack another unit. Conversely, an alive unit will also not attack another unit that is already dead.

### Enhancement 4

Aside from gold and food, there is also the concept of lumber. Add lumber as a resource that the barracks can handle.

A Barracks can start off with 500 lumber.

### Enhancement 5

Introduce a SiegeEngine Unit. The SiegeEngine is very effective against buildings such as the Barracks. It is however ineffective against other units (can't attack them, as though they were dead).

So unlike with Footman (whose attacks do a fraction of the damage they normally would), the SiegeEngine does 2x the damage against the Barracks

Also, Siege Engines can attack other siege engines even though they cannot attack any other units (such as Peasants or Footmen)

Stats:
* AP: 50
* HP: 400
* Cost: 200 gold, 60 lumber, 3 food

**Notes:**
* You will need to require the `seige_engine.rb` file in `spec_helper.rb`
