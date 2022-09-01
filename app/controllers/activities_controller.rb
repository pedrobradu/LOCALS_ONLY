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

    map(@activities)

    # @filter = Activity.new(params[:activity])
    # @filtered_activities = Activity.where(category: )
  end

  def show
    @activity = Activity.find(params[:id])
    @item = WishlistItem.new
    @user = current_user
    @marker = [{
      lat: @activity.latitude,
      lng: @activity.longitude,
      info_window: render_to_string(partial: "info_window", locals: { activity: @activity })
    }, {
      lat: @user.latitude,
      lng: @user.longitude,
      # info_window: render_to_string(partial: "info_window", locals: { activity: @activity })
    }]
    @review = Review.new
    # @wishlists = Wishlist.all.order(:title)
  end

  def map(activities)
    @markers = activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: { activity: activity })
      }
    end
  end
end
