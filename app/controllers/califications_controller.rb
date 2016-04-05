class CalificationsController < InheritedResources::Base

  private

    def calification_params
      params.require(:calification).permit(:score, :user_id, :location_id, :message)
    end
end

