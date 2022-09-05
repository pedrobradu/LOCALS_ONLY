class CheckinsController < ApplicationController

    def create
        activity = Activity.find(params[:activity_id])
        checkin = Checkin.new(activity_id: activity.id, user_id: current_user.id)
        checkin.count += 1
        checkin.save
        redirect_to activity_path(activity), notice: "Checkin Realizado!"
    end
    
    def update
        checkin = Checkin.find(params[:id])
        checkin.count += 1
        checkin.save
        redirect_to activity_path(checkin.activity), notice: "Checkin Atualizado!"
    end
end
