class Bear

  def initialize(name)
    @name = name
    @stomach = []
  end

  def name()
    return @name
  end

  def change_name(new_name)
    @name = new_name
  end

  def stomach_count()
    return @stomach.length()
  end

  def take_fish(fish, river)
    @stomach << fish
    river.remove_fish(fish)
  end

  def roar()
    return "ROAR!"
  end

end
