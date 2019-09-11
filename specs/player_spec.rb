require('minitest/autorun')
require('minitest/rg')
require_relative('../hiddenword')
require_relative('../player')
require_relative('../game')


class TestPlayer < MiniTest::Test

  def setup()
    @word1 = HiddenWord.new("snow")
    @game_initialize = Game.new(@player1, "snow", [])
    @player1 = Player.new("Joe")
  end

  def test_player_has_name
    assert_equal("Joe", @player1.name)
  end


  def test_player_lives
    assert_equal(6, @player1.lives)
  end
end
