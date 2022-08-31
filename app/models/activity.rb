class Activity < ApplicationRecord
  has_many :wishlist_itens
  has_many :reviews

  include Tagable
end
