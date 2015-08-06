require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:index)
end

get('/coin') do
  @coin = params.fetch('coin').to_i().coin()
  erb(:coin)
end
