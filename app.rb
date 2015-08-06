require('sinatra')
require('sinatra/reloader')
require('./lib/coin')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin') do
  @coin = params.fetch('coin').to_i().coin()
  erb(:coin)
end
