require 'sinatra/base'

require './controllers/application'
require './controllers/account'
require './controllers/item'
require './controllers/category'
require './models/category'
require './models/account'
require './models/item'
require './models/location'
require './controllers/location'
require './controllers/setting'
require './controllers/sell'
require './controllers/search'



map('/') {run ApplicationController}
map('/login') {run AccountsController}
map('/dash') {run ItemsController}
map('/categories') {run CategoriesController}
map('/locations') {run LocationsController}
map('/settings') {run SettingsController}
map('/sell') {run SalesController}
map('/search') {run SearchController}
