#mapped to '/category'

class CategoriesController < ApplicationController
  get '/' do
    @categories=Category.all
    erb :add
  end

    post '/' do

      @product =Item.create(product_name: params[:product_name],product_description: params[:product_description], product_upc: params[:product_upc], product_number: params[:product_number], product_vendor: params[:product_vendor], unit_price: params[:unit_price], product_image: params[:product_image],category_id: params[:category_id])


      @products=Item.all
      return @products.to_json
    end


    get '/add' do
      erb :categories
    end

    post '/add' do
      @category=Category.create(category_name: params[:category_name])
      @categories=Category.all
      return @categories.to_json
    end


end
