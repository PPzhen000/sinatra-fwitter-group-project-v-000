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
    if logged_in?
      @user = current_user
      erb :'/tweets/edit'
    else
      redirect '/login'
    end
  end


end
