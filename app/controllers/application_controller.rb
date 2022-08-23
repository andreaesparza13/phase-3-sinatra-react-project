class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/artists' do
    artists = Artist.all
    artists.to_json
  end

  get '/artists/:id' do
    artist = Artist.find(params[:id])
    artist.to_json
  end

  get '/art' do
    arts = Art.all
    arts.to_json
  end

  get '/art/:id' do
    art = Art.find(params[:id])
    art.to_json
  end

  get '/exhibits' do
    exhibits = Exhibit.all
    exhibits.to_json
  end

  get '/exhibits/:id' do
    exhibit = Exhibit.find(params[:id])
    exhibit.to_json
  end

end
