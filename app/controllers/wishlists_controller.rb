class WishlistsController < ApplicationController
    def new
        @wishlist = Wishlist.new
    end

    def create
        @wishlist = Wishlist.new(wishlist_params)
        if @wishlist.save
            redirect_to 
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def wishlist_params
      params.require(:wishlist).permit(:title)
    end
end
