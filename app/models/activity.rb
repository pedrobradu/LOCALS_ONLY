class Activity < ApplicationRecord
  has_many :wishlist_itens, dependent: :destroy
  has_many :reviews, dependent: :destroy

  include Tagable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
