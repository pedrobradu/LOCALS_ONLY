class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wishlist_itens
end
