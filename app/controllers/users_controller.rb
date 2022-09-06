class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @wishlists = @user.wishlists
    @wishlist = Wishlist.find_by(user: @user)
    @chatrooms = @user.chatrooms
  end

end
