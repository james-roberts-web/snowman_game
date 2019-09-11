class Game

  attr_accessor :player, :hiddenword, :guessed_letters

  def initialize(player, hiddenword, guessed_letters=[])
    @player = player
    @hiddenword = hiddenWord
    @guessed_letters = guessed_letters
  end

end
