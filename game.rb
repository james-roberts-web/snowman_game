class Game

  attr_accessor :player, :hiddenword, :guessed_letters

  def initialize(player, hiddenword, guessed_letters=[])
    @player1 = player
    @hiddenword = hiddenword
    @guessed_letters = guessed_letters
  end

  def guess(letter)
    @guessed_letters.push(letter)
    if !@hiddenword.include?(letter)
      @player1.lives -= 1
    end
  end

  def game_lost
    game_lost = false if @player1.lives > 0
    game_lost = true if @player1.lives == 0
    return game_lost
  end


  def game_won
    winning_counter = 0
    for word_letter in @hiddenword.split(//)
      for guess_letter in @guessed_letters
        if guess_letter == word_letter
          winning_counter += 1
        end
      end
    end
    if winning_counter == @hiddenword.split(//).count
      return true
    end
    return false
  end

end
