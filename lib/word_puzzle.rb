class String
  define_method(:word_puzzle) do
    vowels = ["a", "e", "i", "o", "u"]
    letters = self.split("")
    letters.each do |letter|
      if vowels.include?(letter)
         letter.replace("-")
      end
    end
  end
end
