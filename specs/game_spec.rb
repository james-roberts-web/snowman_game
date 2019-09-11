require('minitest/autorun')
require('minitest/rg')
require_relative('../hiddenword')
require_relative('../player')
require_relative('../game')

class TestGame < MiniTest::Test

  def setup
    @word1 = HiddenWord.new("snow")
    @game_initialize = Game.new("Joe", "snow", [])
    @player = Player.new("Joe")
    @game_correct_guess = Game.new("Joe", "snow", ["n"])
  end

  def test_correct_guess
    @game_correct_guess.guess("o")
    assert_equal(["n", "o"], @game_correct_guess.guessed_letters)
    assert_equal("*no*", @word1.display(@game_correct_guess.guessed_letters))
  end

  def incorrect_guess
    @game_initialize.guess("e")
    assert_equal(["e"], @game_initialize.guessed_letters)
    assert_equal("****", @word1.display(@game_initialize.guessed_letters))
  end


end
