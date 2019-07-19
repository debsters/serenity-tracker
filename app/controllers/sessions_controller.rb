class SessionsController < ApplicationController

  get '/login' do
    erb :"sessions/login"
  end

  post '/sessions' do
    #login a user with this email
    login(params[:email])
    redirect '/medications'
  end

  get '/logout' do
    logout!
    redirect '/medications'
  end

end
