get '/' do
  erb :index
end

post '/search_word' do
  @word = Word.new(word: params[:user_input])
  @anagrams = @word.anagrams
  erb :index
end