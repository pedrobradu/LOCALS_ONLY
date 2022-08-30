class ActivitiesController < ApplicationController
  def index
    # @activities = Activity.all
    @activities = Activity.where(category: params[:category])
  end

  def show
    @activity = Activity.find(params[:id])
  end
end
