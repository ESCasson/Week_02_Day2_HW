require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

def setup
  @bear = Bear.new("Yogi", "Grizzly")
end

def test_bear_name
assert_equal("Yogi", @bear.name)
end

def test_bear_type
assert_equal("Grizzly", @bear.type)
end

def test_stomach_starts_empty
assert_equal(0, @bear.check_stomach_size)
end

def test_add_fish_to_stomach
  fish = Fish.new("Bob")
  @bear.add_fish_to_stomach(fish)
  assert_equal(1, @bear.check_stomach_size)
end

def test_bear_roars
  actual = @bear.bear_roars()
  assert_equal("ROAR! ROAR!", @bear.bear_roars())
end

end
