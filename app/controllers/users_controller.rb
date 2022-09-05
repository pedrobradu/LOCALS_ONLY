class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @wishlists = @user.wishlists
    @wishlist = Wishlist.find_by(user: @user)
  end

end
