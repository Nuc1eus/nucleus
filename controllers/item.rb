#mapped to '/dash'
class ItemsController < ApplicationController


  get '/' do
    authorization_check
    erb :dash
  end

  get '/add' do
    authorization_check
    @categories=Category.all
    erb :add
  end

  post '/add' do

    @product =Item.create(product_name: params[:product_name],product_description: params[:product_description], product_upc: params[:product_upc], product_number: params[:product_number], product_vendor: params[:product_vendor], unit_price: params[:unit_price], product_image: params[:product_image],category_id: params[:category_id], product_qty: params[:product_qty]);
    @categories=Category.all
    @products=Item.all
    redirect '/dash/list'
  end

  get '/list' do
    authorization_check
    @products=Item.all
    erb :list
  end

  get '/sell' do
    erb :sell
  end

  get '/update/:id' do
    erb :update
  end

  post '/update/:id' do
    @product = Item.find(params[:id])
    @product.product_name=params[:product_name]
    @product.product_description=params[:product_description]
    @product.product_upc=params[:product_upc]
    @product.product_number=params[:product_number]
    @product.product_vendor=params[:product_vendor]
    @product.unit_price=params[:unit_price]
    @product.product_image=params[:product_image]
    @product.product_qty=params[:product_qty]
    @product.save
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
