
lines_array = File.readlines('dictionary.txt')

lines_array.each do |word|
  Word.create(word: word.chomp)
end
