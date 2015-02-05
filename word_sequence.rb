class Word

  def initialize(dictionary_file, sequences_file, words_file)
    @dictionary_file = dictionary_file
    @sequences_file = sequences_file
    @words_file = words_file
  end

  def generate_data
    four_letter_words = four_letter_words(@dictionary_file)
    sequences_text = four_letter_words.keys
    words_text = four_letter_words.values
    populate_files(sequences_text, @sequences_file)
    populate_files(words_text, @words_file)
  end
  
  # method to populate target files with output data  
  def populate_files(text, to_file)
    File.open(to_file, 'w') do |file| 
      file.puts(text) 
    end
  end  


  # method to filter the given dictionary from words with 4-letters
  def four_letter_words(dictionary_file)
    four_letter_words_hash = Hash.new
    four_letters_words = []
    file = File.open(dictionary_file)
    file.each_line do |word|
      # remove white spaces
      word = word.chomp
      # filter out words with 4 letters 
      four_letters_words << word if word.length == 4 

      four_letters_words.each do |item| 
        four_letter_words_hash[item] = item
      end
    end
    four_letter_words_hash
  end

  # method to filter the given dictionary from words with more than 4-letters
  def over_four_letter_words(dictionary_file)
    over_four_letter_words_hash = Hash.new
    over_four_letters_words = []
    file = File.open(dictionary_file)
    file.each_line do |word|
      # remove white spaces
      word = word.chomp
      # filter out words with 4 letters 
      over_four_letters_words << word if word.length > 4 

      # iterate over each word and slice it
      over_four_letters_words.each do |item|
        
      end

      over_four_letters_words.each do |item| 
        over_four_letters_words[item] = item
      end
    end
    four_letter_words_hash
  end
  
end