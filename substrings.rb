def substrings(sentence, dictionary)
  dictionary.each_with_object({}) do |word,memo|
    count = sentence.downcase.scan(word).size
    memo[word] = count if count > 0
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)