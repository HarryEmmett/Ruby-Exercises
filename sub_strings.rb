def substrings(argument, dictionary)
  result = {}
  dictionary.each do |word|
    l_word = word.downcase
    argument.downcase.split(' ').each do |arg|
      if arg.downcase.include?(l_word)
        result[l_word] =
          result[l_word] ? result[l_word] + 1 : 1
      end
    end
  end
  result
end

# Return a new hash that has values & counts for all the possible words in a string
# Howdy returns how & howdy

# dictionary = %w[below down go going horn how howdy it i low own part partner sit]
# puts substrings("Howdy partner, sit down! How's it going?", dictionary)
