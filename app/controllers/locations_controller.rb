class LocationsController < InheritedResources::Base

  private

    def location_params
      params.require(:location).permit(:city, :name, :address, :description, :type, :avg_score, :phone, :photos)
    end
end

