class WishlistItemsController < ApplicationController

  def new
    @item = WishlistItem.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @wishlist = Wishlist.find_by(user: current_user)
    @wishlist_item = WishlistItem.new(activity: @activity, wishlist: @wishlist)
    if @wishlist_item.save
      redirect_to user_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @wishlist_item = WishlistItem.find(params[:id])
    @wishlist_item.destroy
    redirect_to user_path(current_user), status: :see_other
  end
end
