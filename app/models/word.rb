class Word < ActiveRecord::Base

  def anagrams
    match_array = []
    words = Word.all
    search_array = self.word.downcase.split(//).sort
    words.select! { |dict_word| dict_word.word.length == self.word.length }
    words.each do |dict_word|
      if dict_word.word.downcase.split(//).sort == search_array
        match_array << dict_word
      end
    end
    match_array
  end

end
