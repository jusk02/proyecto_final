class LocationsController < ApplicationController

	def create
	end

  private

    def location_params
      params.require(:location).permit(:city, :name, :address, :description, :type_sector, :avg_score, :phone, :photos)
    end
end

