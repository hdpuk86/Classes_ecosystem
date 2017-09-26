 require('minitest/autorun')
 require('minitest/rg')

 require_relative('../fish')

 class TestFish < MiniTest::Test

   def setup()
     @fish1 = Fish.new("Dory")
   end

   def test_fish_name()
     assert_equal("Dory", @fish1.fish_name())
   end

   def test_change_name()
     assert_equal("Hayley", @fish1.change_name("Hayley"))
   end

 end
