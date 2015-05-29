class String

  define_method(:word_puzzle) do
    vowels = ["a", "e", "i", "o", "u"]
    words = self.split(" ")
    words.each do |word|
      letters = word.split("")
      letters.each do |letter|
        if vowels.include?(letter)
          letter.replace("-")
        end
      new_word = letters.join()
      word.replace(new_word)
      end
    end
    words.join(" ")
  end
end
