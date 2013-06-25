class Word < ActiveRecord::Base
  # Remember to create a migration!
  def anagrams
    Word.where('sort_word = ?', self.word.split(//).sort.join.downcase)
  end
end
