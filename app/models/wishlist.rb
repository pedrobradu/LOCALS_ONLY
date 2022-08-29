class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :wichlist_item
end
