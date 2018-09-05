class TweetsController < ApplicationController

  get '/tweets' do
    if logged_in?
      @user = current_user
      erb :'/tweets/index'
    else
      redirect '/login'
    end
  end

  get '/tweets/new' do
    if logged_in?
      @user = current_user
      erb :'/tweets/new'
    else 
      redirect '/login' 
    end 
  end

  post '/tweets' do
    binding.pry
  end

  get '/tweets/edit' do
    erb :'/tweets/edit'
  end


end
