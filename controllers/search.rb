class SearchController < ApplicationController

  get '/' do
    @categories=Category.all
    erb :search
  end

  post '/:id' do
    #get category_id from select/option drop down
    #return all items that have a category_id of selected id
    #get the category by the passed category_id param
    @category=Category.find(params[:category_id])
    #collect items
    @items=Item.all
    #initilize a filter , we are going to loop through the items ana it the product category_id is eqal to the id of the category , we will add it to the filtered hash
    @filtered=Array.new
    @items.each do |item|
      if item.category_id == @category.id
        @filtered.push(item)
      end
    end

    erb :filtered
  end

end
