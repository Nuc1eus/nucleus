#mapped to '/category'

class CategoriesController < ApplicationController
  get '/' do
    @categories=Category.all
    erb :categories
  end

    post '/' do

      @category=Category.new
      @category.category_name=params[:category_name]
      @category.save
      @categories=Category.all
      return @categories.to_json

    end







end
