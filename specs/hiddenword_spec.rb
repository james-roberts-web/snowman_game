require('minitest/autorun')
require('minitest/rg')
require_relative('../hiddenword')
require_relative('../player')
require_relative('../game')


class TestHiddenWord < MiniTest::Test

  def setup()
    @word1 = HiddenWord.new("snow")
    @player1 = Player.new("Joe")
    @game_initialize = Game.new(@player1, "snow", [])
    @game_correct_guess = Game.new(@player1, "snow", ["n"])
    @game_incorrect_guess = Game.new(@player1, "snow", ["e"])
  end

  def test_initial_display
    assert_equal("****", @word1.display(@game_initialize.guessed_letters))
  end

  def test_later_display
    @game_initialize.guessed_letters = ["n"]
    assert_equal("*n**", @word1.display(@game_correct_guess.guessed_letters))
  end

end
