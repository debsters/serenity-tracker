class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "moraldistilled"
  end

  get '/' do
    "Debs making sure it works"
  end

end
