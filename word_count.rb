def cleaned_doc(word_string)
  word_string.split(" ").map do |word|
    word.gsub(/[[:punct:]]/, '').downcase()
  end
end


def word_count_engine(word_string)
  frequencies = Hash.new(0)
  cleaned_doc(word_string).each do |word|
      frequencies[word.downcase] += 1
  end

  sorted_hash = frequencies.sort_by do |word, frequency|
    [-frequency, -word]
  end

  sorted_hash.map do |word, frequency|
    [word, frequency.to_s]
  end
end
