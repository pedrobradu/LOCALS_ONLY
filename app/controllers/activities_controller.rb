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

    map(@activities)

    # @filter = Activity.new(params[:activity])
    # @filtered_activities = Activity.where(category: )
  end

  def show
    @activity = Activity.find(params[:id])
    @item = WishlistItem.new
    @user = current_user
    @marker = [{ lat: @activity.latitude, lng: @activity.longitude }]
    
    # @wishlists = Wishlist.all.order(:title)
  end

  def map(activities)
    @markers = activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude
      }
    end
  end
end
