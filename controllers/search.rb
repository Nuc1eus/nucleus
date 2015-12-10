class SearchController < ApplicationController
  get '/' do
    @categories=Category.all
    erb :search
  end

  post '/'  do
    #get category_id from select/option drop down
    #return all items that have a category_id of selected id
    id=params[:id]
    @category=Category.find(id)

    @items=Item.all
    return params.to_json
  end


end
