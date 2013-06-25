get '/' do
  erb :index
end

post '/anagrams' do
  erb :index
  redirect "#{params[:user_input]}"
end


get "/:word" do |word|
  # TODO: don't break if the word isn't there!
 @anagrams = Word.find_by_word(word.downcase).anagrams
 erb :index
end
