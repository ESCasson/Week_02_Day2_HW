class Bear
attr_reader :name, :type


def initialize(input_name, input_type)
  @name = input_name
  @type = input_type
  @stomach = []
end

def check_stomach_size
 @stomach.length()
end

def add_fish_to_stomach(fish)
  @stomach.push(fish)
end

def bear_roars()
  return "ROAR! ROAR!"
end

end
