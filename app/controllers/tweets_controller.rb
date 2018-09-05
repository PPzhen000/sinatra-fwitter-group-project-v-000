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
    if logged_in?
      if params[:content] == ""
        redirect "/tweets/new"
      else
        @user = User.find_by_id(session[:user_id])
        @tweet = Tweet.create(:content => params[:content], :user_id => @user.id)
        redirect to "/tweets/#{@tweet.id}"
      end
    end 
  end

  get '/tweets/:id' do #tweets show page
    if logged_in?
      @tweet = Tweet.find_by_id(params[:id])
      erb :'tweets/show_tweet'
    else
      redirect to '/login'
    end
  end

  get '/tweets/:id/edit' do
    if logged_in?
      @user = current_user
      erb :'/tweets/edit'
    else
      redirect '/login'
    end
  end


end
