class ActivitiesController < ApplicationController
  def index
    if params[:category].present?
      @activities = Activity.where(category: params[:category])
    else
      @activities = Activity.all
    end

    if params[:ranking].present?
      @activities = @activities.where("ranking > ?", params[:ranking])
    end

    if params[:tags].present?
      @activities = @activities.joins(:tags).where(tags: params[:tags])
    end
  end

    def show
      @activity = Activity.find(params[:id])
      @item = WishlistItem.new
      @user = current_user
    end
end
