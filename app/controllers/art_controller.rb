class ArtController < ApplicationController

   get '/art' do
      arts = Art.all
      arts.to_json
   end

   get '/art/:id' do
      art = Art.find(params[:id])
      art.to_json
   end

   post '/art' do
      art = Art.create(
      title: params[:title],
      medium: params[:medium],
      description: params[:description],
      image_url: params[:image_url],
      artist_id: params[:artist_id],
      exhibit_id: params[:exhibit_id]
      )
      art.to_json
   end

   patch '/art/:id' do
      art = Art.find(params[:id])
      art.update(
         title: params[:title],
         medium: params[:medium],
         description: params[:description],
         image_url: params[:image_url],
         artist_id: params[:artist_id],
         exhibit_id: params[:exhibit_id]
      )
      art.to_json
   end

   delete '/art/:id' do
      art = Art.find(params[:id])
      art.destroy
      art.to_json
   end
   
end