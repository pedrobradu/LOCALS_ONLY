class ActivitiesController < ApplicationController
    def index
        @activities = Activity.all
    end

    def show
        @activity = Activity.find(params[:id])
        @item = WishlistItem.new
        @user = current_user
        # @wishlists = Wishlist.all.order(:title)
    end
end
