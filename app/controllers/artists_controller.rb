class ArtistsController < ApplicationController

   get '/artists' do
      artists = Artist.all
      artists.to_json
   end

   get '/artists/:id' do
      artist = Artist.find(params[:id])
      artist.to_json
   end

   get '/artists/:id/arts' do
      artist = Artist.find(params[:id])
      artist.arts.to_json
   end

   post '/artists' do
      artist = Artist.create(JSON.parse(request.body.read))
      artist.to_json
   end

   patch '/artists/:id' do
      artist = Artist.find(params[:id])
      artist.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      location: params[:location],
      age: params[:age]
      )
      artist.to_json
   end

   delete '/artists/:id' do
      artist = Artist.find(params[:id])
      artist.destroy
      artist.to_json
   end
   
end