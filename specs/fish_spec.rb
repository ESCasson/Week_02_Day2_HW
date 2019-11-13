require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class FishTest < Minitest::Test

def test_fish_name
  fish = Fish.new("Bob") 
  assert_equal("Bob", fish.name)

end


end
