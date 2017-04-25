require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places')

get('/') do
  @places = Place.all
  erb(:index)
end

post('/success') do
  destination = params.fetch("destination")
  place = Place.new(destination)
  place.save
  erb(:success)
end
