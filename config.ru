require 'sinatra/base'

require './controllers/application'
require './controllers/account'
require './controllers/item'
require './controllers/category'
require './models/category'
require './models/account'
require './models/item'



map('/') {run ApplicationController}
map('/login') {run AccountsController}
map('/dash') {run ItemsController}
map('/dash/add') {run CategoriesController}
