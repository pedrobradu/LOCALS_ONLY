class Activity < ApplicationRecord
  has_many :wishlist_itens, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :checkins

  include Tagable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average
    if reviews.present?
      (reviews.sum(:rating) / reviews.count.to_f).round(1)
    else
      "Sem Reviews"
    end

  end
end
