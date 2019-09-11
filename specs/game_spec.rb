require('minitest/autorun')
require('minitest/rg')
require_relative('../hiddenword')
require_relative('../player')
require_relative('../game')

class TestGame < MiniTest::Test

  def setup
    @word1 = HiddenWord.new("snow")
    @player1 = Player.new("Joe")
    @game_initialize = Game.new(@player1, "snow", [])
    @game_correct_guess = Game.new(@player1, "snow", ["n"])
  end

  def test_correct_guess
    @game_correct_guess.guess("o")
    assert_equal(["n", "o"], @game_correct_guess.guessed_letters)
    assert_equal("*no*", @word1.display(@game_correct_guess.guessed_letters))
    assert_equal(6, @player1.lives)
  end

  def test_incorrect_guess
    @game_initialize.guess("e")
    assert_equal(["e"], @game_initialize.guessed_letters)
    assert_equal("****", @word1.display(@game_initialize.guessed_letters))
    assert_equal(5, @player1.lives)
  end

  def test_end_conditions__continue
    @game_initialize.guess("z")
    @game_initialize.guess("f")
    assert_equal(false, @game_initialize.game_lost)
  end

  def test_end_conditions__lost
    @game_initialize.guess("z")
    @game_initialize.guess("f")
    @game_initialize.guess("x")
    @game_initialize.guess("j")
    @game_initialize.guess("c")
    @game_initialize.guess("p")
    assert_equal(true, @game_initialize.game_lost)
  end

  def test_end_conditions__won
    @game_initialize.guess("s")
    @game_initialize.guess("n")
    @game_initialize.guess("w")
    @game_initialize.guess("o")
    assert_equal(true, @game_initialize.won)
  end

end
