class AccountsController < ApplicationController

  get 'not_authorized' do
    erb :not_authorized
  end

  get '/' do
    erb :login
  end

  post '/' do

    user = Account.authenticate(params[:user_name],params[:password])
    # binding.pry
    if user
      p 'made it to if statement of user block'
      session[:current_user]=user
       redirect '/dash'


    else
      p 'made it to the else statement of if user'



             redirect '/login/redirect'
    end
  end

  get '/register' do
    erb :register
  end

  post '/register' do

    if does_user_exist(params[:user_name]) == true
      return {:message => 'womp, womp... user exists',:user_name=>params[:user_name]}.to_json
    end

    user = Account.create( user_name: params[:user_name], password: params[:password], name: params[:name], phone: params[:phone], email: params[:email])
    session[:current_user]=user
    # redirect '/success'
    @users=Account.all
    return @users.to_json

  end

  get '/success' do

    @users=Account.all
    # binding.pry
    erb :success
  end

  get '/incorrect' do
    erb :incorrect
  end

end
