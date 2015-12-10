#mapped to '/category'

class CategoriesController < ApplicationController
  get '/' do
    authorization_check
    @categories=Category.all
    binding.pry
    erb :categories
  end

    post '/' do
      authorization_check
      @category=Category.new
      @category.category_name=params[:category_name]
      @category.category_info=params[:category_info]
      @category.category_image=params[:category_image]
      @category.save
      @categories=Category.all
      return @categories.to_json

    end







end
