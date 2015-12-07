class RootController < Sinatra::Base

  get '/' do
    redirect '/login'
  end
end
