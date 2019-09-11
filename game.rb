class Game

  attr_accessor :player, :hiddenword, :guessed_letters

  def initialize(player, hiddenword, guessed_letters=[])
    @player = player
    @hiddenword = hiddenword
    @guessed_letters = guessed_letters
  end

  def guess(letter)
    @guessed_letters.push(letter)
  end

end
