# Jack
# Emil

def word_count_engine(document)
  # take out the punctuation of the input
  # splitting the sentences by spaces into array of words
  # declare an output variable for frequencies and words as an empty
  wordArray = document.split(" ")
  cleanedArray = []
  wordArray.each do |word|
    cleanedArray << word.gsub(/[[:punct:]]/, '').downcase()
  end

  # declare new var for ouput with hash
  # loop through
    # if word matches an existing word in the hash key
      # increment its count
    # elsif


 # counter = {}
  output = {}
  cleanedArray.each do |word|
    if output.keys.include?(word)
      output[word] += 1
    else
      output[word] = 1

    end
  end
  outputArray = output.to_a

  # tuples
  rearrangedOutput = []
  outputArray.each do |pair|
    rearrangedOutput << [pair[1], pair[0]]
  end
  # [["practice", 3], ["makes", 1], ["perfect", 2], ["youll", 1], ["get", 1], ["by", 1], ["just", 4]]

  sortedArray = rearrangedOutput.sort().reverse()

  finalOutput = []
  sortedArray.each do |pair|
    finalOutput << [pair[1], pair[0]]
  end

  finalOutput



  # ["a", "b", "a"]
  #

  # [["practice"],["perfect"]]
  # [["a", "2"], ["b", "1"]]
end
