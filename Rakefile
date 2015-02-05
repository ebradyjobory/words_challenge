# run rake in terminal
require './word_sequence' 
require './specs/words_specs' 

desc "Create words and sequences"
  task :words_sequences do
    # create new instance of class Word
    word = Word.new('dictionary.txt', 'sequences.txt', 'words.txt')
    word.generate_data
  end
