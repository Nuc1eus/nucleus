#'/dash'
class ItemsController < ApplicationController

  get '/' do
    authorization_check
    erb :dash
  end

  get '/add' do
    @categories=Category.all
    @locations=Location.all
    authorization_check
    erb :add
  end

  post '/add' do
    @locations=Location.all
    @categories=Category.all
    @products=Item.all
    @product =Item.create(product_name: params[:product_name],product_description: params[:product_description],location_id: params[:location_id], product_upc: params[:product_upc], product_number: params[:product_number], product_vendor: params[:product_vendor], unit_price: params[:unit_price], product_image: params[:product_image],category_id: params[:category_id], product_qty: params[:product_qty]);
    redirect '/dash/list'
  end

  get '/list' do
    @products=Item.all
    authorization_check
    erb :list
  end

  get '/sell' do
    erb :sell
  end

  get '/update/:id' do
    @categories=Category.all
    @locations=Location.all
    @products=Item.all
    @product = Item.find(params[:id])
    erb :update
  end

  post '/update' do
    @product = Item.find(params[:id])
    @product.product_name = params[:product_name]
    @product.product_description = params[:product_description]
    @product.product_upc = params[:product_upc]
    @product.product_number = params[:product_number]
    @product.product_vendor = params[:product_vendor]
    @product.unit_price = params[:unit_price]
    @product.product_image = params[:product_image]
    @product.product_qty = params[:product_qty]
    @product.category_id=params[:category_id]
    @product.location_id=params[:location_id]
    @product.save
    redirect '/dash/list'
  end

  post '/sell/:id' do
    @item = Item.find(params[:id])
    @item.destroy
    redirect '/dash/list'
  end

end
