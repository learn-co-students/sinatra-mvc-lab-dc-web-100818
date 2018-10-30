class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    split_words = word.split(" ")

    split_words.collect do |word|
      if word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
        word + "way"
      else
        if !vowels.include?(word[1]) && !vowels.include?(word[2])
          chars = word.slice!(0,3)
          word + chars + "ay"
        elsif !vowels.include?(word[1])
          chars = word.slice!(0,2)
          word + chars + "ay"
        else
          char = word[0]
          word.slice!(0)
          word + char + "ay"
        end
      end
    end.join(" ")
  end

end
