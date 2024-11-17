words = ["hi", "yo", "hi","hi", "yo", "yo", "hello"]
my_hash = {}  # Initialize the hash outside of the loop

words.each do |word|
  my_hash[word] ||= 0  # Initialize the key if it doesn't exist
  my_hash[word] += 1   # Increment the value
end

most_common_word = my_hash.max[0]
