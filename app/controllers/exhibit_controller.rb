class ExhibitController < ApplicationController

   get '/exhibits' do
      exhibits = Exhibit.all
      exhibits.to_json
   end

   get '/exhibits/:id' do
      exhibit = Exhibit.find(params[:id])
      exhibit.to_json
   end

   get '/exhibits/:id/arts' do
      exhibit = Exhibit.find(params[:id])
      arts = exhibit.grab_exhibit
      arts.to_json
   end

   post '/exhibits' do
      exhibit = Exhibit.create(
      theme: params[:theme],
      location: params[:location],
      name: params[:name],
      )
      exhibit.to_json
   end

   patch '/exhibits/:id' do
      exhibit = Exhibit.find(params[:id])
      exhibit.update(
         theme: params[:theme],
         location: params[:location],
         name: params[:name],
      )
      exhibit.to_json
   end

   delete '/exhibits/:id' do
      exhibit = Exhibit.find(params[:id])
      exhibit.destroy
      exhibit.to_json
   end
   
end