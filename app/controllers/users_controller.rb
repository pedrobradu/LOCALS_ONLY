class UsersController < ApplicationController
    def show
        @user = current_user
        @wishlists = current_user.wishlists
    end
end
