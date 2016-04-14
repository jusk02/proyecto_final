class UsersController < ApplicationController

	

	def index

		render text: "esto es"
		@patients = User.all
		render partial: 'patients',locals:{ patients: @patients}
		
	end
end
