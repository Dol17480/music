require('sinatra')
require('sinatra/contrib/all')
require_relative('./controllers/artist_controller')
require_relative('./controllers/album_controller')



get '/' do
  "hello world!"
end

get '/library' do
  @artists = Artist.all()
  @albums = Album.all()
  erb( :index )
  end