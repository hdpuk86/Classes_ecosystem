class River

  def initialize(name)
    @name = name
    @fish = []
  end

  def name()
    return @name
  end

  def change_name(new_name)
    @name = new_name
  end

  def count_fish()
    return @fish.length()
  end

  def add_fish(fish)
    @fish << fish
  end

  def remove_fish(fish)
    @fish.delete(fish)
  end

  def show_fish()
    return @fish
  end

end
