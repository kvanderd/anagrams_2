File.readlines('words').each do |line|
  Word.create(word: line.chomp.downcase, sort_word: line.chomp.split(//).sort.join.downcase)
end

