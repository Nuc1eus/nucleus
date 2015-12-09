#mapped to '/category'

class CategoriesController < ApplicationController
  get '/' do
    authorization_check
    @categories=Category.all
    erb :categories
  end

    post '/' do
      authorization_check
      @category=Category.new
      @category.category_name=params[:category_name]
      @category.save
      @categories=Category.all
      return @categories.to_json

    end







end
