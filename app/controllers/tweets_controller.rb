class TweetsController < ApplicationController

  get '/tweets' do
    erb :'/tweets/index'
  end

  get '/tweets/new' do
    erb :'/tweets/new'
  end

  post '/tweets' do
    
  end

end
