require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')
require('pry')

get('/') do
  erb(:index)
end

get('/words') do
  @@words = Word.all()
end

get('/words/new') do
  erb(:word_form)
end

post('/words') do
  @word = params.fetch("word")
  erb(:success)
end
