require('minitest/autorun')
require('minitest/rg')

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Dory")
    @fish2 = Fish.new("Nemo")

    @river1 = River.new("Amazon")
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)

    @bear = Bear.new("Yogi")
  end

  def test_bear_name()
    assert_equal("Yogi", @bear.name())
  end

  def test_change_bear_name()
    assert_equal("Pooh", @bear.change_name("Pooh"))
  end

  def test_count_fish_in_stomach()
    assert_equal(0, @bear.stomach_count())
  end

  def test_bear_take_fish()
    @bear.take_fish(@fish1, @river1)

    assert_equal(1, @bear.stomach_count())
    assert_equal(1, @river1.count_fish())
  end

  def test_roar()
    assert_equal("ROAR!", @bear.roar())
  end

end
