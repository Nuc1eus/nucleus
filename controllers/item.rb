class ItemsController < ApplicationController


  get '/' do
    erb :dash
  end

  get '/add' do
    erb :add
  end

  post '/add' do

    @product =Item.create(product_name: params[:product_name],product_description: params[:product_description], product_upc: params[:product_upc], product_number: params[:product_number], product_vendor: params[:product_vendor], unit_price: params[:unit_price], product_image: params[:product_image]);

    @products=Item.all
    return @products.to_json
  end

  get '/list' do
    @products=Item.all
  
    erb :list
  end

  get '/sell' do
    erb :sell
  end

  post '/update/:id' do
    @product=Item.find(params[:id])
    erb :update
  end

  post '/confirmation' do
    @product =Item.create(product_name: params[:product_name],product_description: params[:product_description], product_upc: params[:product_upc], product_number: params[:product_number], product_vendor: params[:product_vendor], unit_price: params[:unit_price], product_image: params[:product_image]);

    erb :confirmation
  end

  post '/sell/:id' do
    @item = Item.find(params[:id])
    @item.destroy
    p 'item destroyed'
  end




end
