dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash = Hash.new(0) # make new hash
  string = string.downcase # lowercase string

  # iterate through dictionary
  dictionary.each do |word|
    word = word.downcase # lowercase word
    p string.scan(word)
    # iterate through string and check if it includes word
    # if yes, then iterate through string and check if each string item matches word, then add result to an array, finally get the length of this array and store it as a value of the word key in hash
    hash[word] = string.scan(word).size if string.include?(word)
  end
  hash
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
