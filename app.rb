require('sinatra')
require('sinatra/reloader')
require('./lib/word_puzzle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  string = params.fetch('string_one')
  @string_one = string.word_puzzle()
  erb(:results)
end
