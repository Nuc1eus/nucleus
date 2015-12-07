require 'sinatra/base'

require './controllers/application'
require './controllers/account'
require './controllers/item'
require './models/account'
require './models/item'



map('/') {run ApplicationController}
map('/login') {run AccountsController}
map('/dash') {run ItemsController}
