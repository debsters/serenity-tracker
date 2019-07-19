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

  get '/medications/:id/edit'
    #Checking if they are logged in
    if !logged_in?
      redirect "/login" #Redirecting if they aren't
    else
      if medication = current_user.medications.find_by(params[:id])
        "An edit medication form #{current_user.id} is editing #{medication.id}"
      else
        redirect '/medications'
    end
  end

end
