class River

attr_reader :name


def initialize(input_name, input_fishes)
  @name = input_name
  @fishes = input_fishes
end

def fishes_count
  @fishes.length()
end

def remove_fish(fish)
  @fishes.delete(fish)
end

def bear_eats_fish(bear)
  fish = @fishes[0]
  remove_fish(fish)
  bear.add_fish_to_stomach(fish)
end

end
