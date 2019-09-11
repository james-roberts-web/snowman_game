require('minitest/autorun')
require('minitest/rg')
require_relative('../hiddenword')
require_relative('../player')
require_relative('../game')


class TestHiddenWord < MiniTest::Test

  def setup()
    @word1 = HiddenWord.new("snow")
    @game_initialize = Game.new("Joe", "snow", [])
  

  end

  def test_initial_display
    assert_equal("****", @word1.display)
  end

end
