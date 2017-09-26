require('minitest/autorun')
require('minitest/rg')

require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

  def setup
    @fish1 = Fish.new("Dory")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Hayley")

    @river = River.new("Amazon")
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
  end

  def test_river_name()
    assert_equal("Amazon", @river.name())
  end

  def test_change_river_name()
    assert_equal("Thames", @river.change_name("Thames"))
  end

  def test_count_fish()
    assert_equal(2, @river.count_fish())
  end

  def test_add_fish()
    @river.add_fish(@fish3)

    assert_equal(3, @river.count_fish())
  end

  def test_remove_fish()
    @river.remove_fish(@fish2)

    assert_equal(1, @river.count_fish())
  end

  def test_show_fish()
    expected = [@fish1, @fish2]
    assert_equal(expected, @river.show_fish())
  end

end
