class RegistrationsBusinessController < Devise::RegistrationsController  
	respond_to :json #ya no solo responde a HTML sino a Json tambien
end
