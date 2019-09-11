class HiddenWord
  attr_accessor :word

  def initialize(word)
    @word = word
  end



  def display(guessed_letters)
    display = ""
    for word_letter in @word.split(//)
      for guess_letter in guessed_letters
        if guess_letter == word_letter
          display += word_letter
        end
      end
      if !guessed_letters.include?(word_letter)
          display += "*"
      end
    end
    return display
  end


end
