hiddenword = "snow"
guessed_letters = ["a","n","t"]

for letter in guessed_letters
  string = ""
  string << letter
end
  p string



# guessed_letters_string = guessed_letters.concat
# p guessed_letters_string


p hiddenword.tr(guessed_letters_string, "*")
