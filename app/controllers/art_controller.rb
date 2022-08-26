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
      body = JSON.parse(request.body.read)
      first_name = body["artist_full_name"].split(" ")[0] 
      last_name = body["artist_full_name"].split(" ")[1]
      exhibit = body["exhibit"]
      Art.create(
         title: body["title"],
         medium: body["medium"],
         description: body["description"],
         image_url: body["image_url"],
         artist_id: Artist.find_or_create_by(first_name: first_name, last_name: last_name).id,
         exhibit_id: Exhibit.find_or_create_by(name: exhibit).id
      ).to_json
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