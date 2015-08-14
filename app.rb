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

get('/word_details/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word_details)
end

post('/') do
  word = params.fetch("word")
  @new_word = word
  Word.new(word).save()
  erb(:success)
end

post('/success2') do
  definition = params.fetch("definition")
  @new_definition = definition
  Definition.new(definition).save()
  @word = Word.find(params.fetch('add_definition_id').to_i())
  @word.add_definition(@new_definition)
  erb(:success2)
end
