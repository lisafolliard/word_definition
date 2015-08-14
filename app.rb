require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')
require('pry')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/words/new') do
  erb(:word_form)
end

post('/') do
  word = params.fetch("word")
  Word.new(word).save()
  @words = Word.all()
  erb(:success)
end



# get('/words') do
#   @words = Word.all()
#   erb(:words)
# end
