class ApplicationController < Sinatra::Base
  require 'bundler'
  Bundler.require

  enable :sessions

  ActiveRecord::Base.establish_connection(
    :adapter=>'postgresql',
    :database=>'nucleus'
  )

  set :views, File.expand_path('../../views',__FILE__)
  set :public_dir, File.expand_path('../../public',__FILE__)

  def does_user_exist(username)
  user = Account.find_by(:user_name => username)
  if user
    return true
  else
    return false
  end
end

def authorization_check
  if session[:current_user] == nil
    redirect '/not_authorized'
  else
    return true
  end
end

def logout
  session[:current_user]=nil
end

get '/' do
  redirect '/login'
end

get '/logout' do
  logout
  @message='thank you for visiting, see you soon!'
  erb :logout
end

not_found do
  status 404
  erb :oops
end


end
