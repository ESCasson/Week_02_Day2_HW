require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')


class RiverTest < Minitest::Test

def setup
  @fishes = ['Bob', 'Sammy the Salmon', 'Trevor', 'Pete']
  @river = River.new("Clyde", @fishes)
end

def test_river_name
  assert_equal("Clyde", @river.name)
end

def test_fishes_count
  assert_equal(4, @river.fishes_count)
end

def test_remove_fish()
  fish = @fishes[0]
  @river.remove_fish(fish)
  assert_equal(3, @river.fishes_count)
end

def test_bear_eats_fish()
  bear = Bear.new("Yogi", "Grizzly")
  fish = @fishes[0]
  @river.remove_fish(fish)
  bear.add_fish_to_stomach(fish)

  assert_equal(3, @river.fishes_count)
  assert_equal(1, bear.check_stomach_size)
end

end
