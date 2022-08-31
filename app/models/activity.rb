class Activity < ApplicationRecord
  has_many :wishlist_itens
  has_many :reviews

  include Tagable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
