class MedicationsController < ApplicationController

  get '/medications' do
    "A list of publically available medications"
  end

  get '/medications/new' do
    #Checking if they are logged in
    if !logged_in?
      redirect "/login" #Redirecting if they aren't
    else
      "A new medication form" # rendering if they are
    end
  end

  get '/medications/:id/edit' do
    if !logged_in?
      redirect "/login"
    else
      "An edit medication form"
    end
  end

end
