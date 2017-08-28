# input: "hey hay! He"
# output: ["hey", "hay", "he"]

def cleaned_doc(word_string)
  word_string.split(" ").map do |word|
    word.gsub(/[[:punct:]]/, '').downcase()
  end
end

def word_count_engine(word_string)

  outputArray = cleaned_doc(word_string).map do |word|
    if output.keys.include?(word)
      output[word] += 1
    else
      output[word] = 1
    end
  end

  puts output

  # tuples
  rearrangedOutput = []
  outputArray.each do |pair|
    rearrangedOutput << [pair[1], pair[0]]
  end
  # [["practice", 3], ["makes", 1], ["perfect", 2], ["youll", 1], ["get", 1], ["by", 1], ["just", 4]]

  sortedArray = rearrangedOutput.sort().reverse()

  finalOutput = []
  sortedArray.each do |pair|
    finalOutput << [pair[1], pair[0].to_s]
  end

  finalOutput



  # ["a", "b", "a"]
  #

  # [["practice"],["perfect"]]
  # [["a", "2"], ["b", "1"]]
end
