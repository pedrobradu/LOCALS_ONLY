class Activity < ApplicationRecord
    has_many :wishlist_itens
    has_many :reviews
    has_many :linked_tags
end
