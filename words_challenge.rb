# read the dictionary file
file = File.open('dictionary.txt')


file.each_line do |word|
  # filter out words with less than 4 letters
  puts word if word.length > 4
  
end