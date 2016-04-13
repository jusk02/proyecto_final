class SessionsController < Devise::SessionsController  
  respond_to :json #ya no solo responde a HTML sino a Json tambien
end