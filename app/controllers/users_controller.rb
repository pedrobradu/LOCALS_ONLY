class UsersController < ApplicationController
  def show
    @user = current_user
    @wishlists = current_user.wishlists
    @wishlist = Wishlist.find_by(user: current_user)
    @chatroom = Chatroom.first
  end

end
